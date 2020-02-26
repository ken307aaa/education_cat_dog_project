#!/usr/bin/env python
# coding: utf-8

# In[31]:


#%% Read and prepare data

import os
import keras
import numpy as np
from PIL import Image


# In[32]:


size = (128,128)
cat_img_list=[]
dog_img_list=[]

base_path = r'D:/tailin/dataset\PetImages'

for root, dirs, files in os.walk(base_path):
    for file in files:
        if file.endswith(".jpg"):
            filename = os.path.join(root, file)
            file_size = os.path.getsize(filename)
            category_name = os.path.basename(root)
            if file_size >= 20480:
                im = Image.open(filename)
                if im.mode=='RGB':
                    im=im.resize(size,Image.BILINEAR)
                    imarray = np.array(im)
                    imarray = (imarray - np.min(imarray))/(np.max(imarray)-np.min(imarray))
                    if category_name == 'Cat':
                        cat_img_list.append(imarray)
                    elif category_name == "Dog":
                        dog_img_list.append(imarray)


# In[33]:


cat_img_arr = np.asarray(cat_img_list)
dog_img_arr = np.asarray(dog_img_list) 
            
cat_img_label = np.ones(cat_img_arr.shape[0])*0
dog_img_label = np.ones(dog_img_arr.shape[0])*1

img_arr   = np.concatenate((cat_img_arr, dog_img_arr), axis = 0)
img_label = np.concatenate((cat_img_label, dog_img_label), axis = 0) 
img_label = keras.utils.to_categorical(img_label, num_classes = 2)

del cat_img_arr, dog_img_arr, cat_img_label, dog_img_label, cat_img_list, dog_img_list, dirs, category_name, file_size, filename, files, root


# In[34]:


#%% Shuffle and seperate data

import random
temp = list(zip(img_arr, img_label))
random.shuffle(temp)
img_arr, img_label = zip(*temp)
img_arr=np.asarray(img_arr)
img_label=np.asarray(img_label)
del temp

from sklearn.model_selection import train_test_split

train_data, test_data, train_label, test_label = train_test_split(img_arr, img_label, test_size=0.2, random_state=42)


# In[35]:


#%% Create Model
from keras.models import Sequential
from keras.layers import Dense, SpatialDropout2D, Dropout, Flatten
from keras.layers import Conv2D, MaxPooling2D
from keras.optimizers import SGD,RMSprop
from keras.callbacks import EarlyStopping


# In[36]:


# Generate model
model = Sequential()

model.add(Conv2D(64, (3, 3), activation='relu', input_shape=(128,128,3),padding='same',name='block1_conv2_1'))
model.add(Conv2D(64, (3, 3), activation='relu',padding='same',name='block1_conv2_2'))
model.add(MaxPooling2D(pool_size=(2, 2),name='block1_MaxPooling'))
model.add(SpatialDropout2D(0.25))

model.add(Conv2D(128, (3, 3), activation='relu',padding='same',name='block2_conv2_1'))
model.add(Conv2D(128, (3, 3), activation='relu',padding='same',name='block2_conv2_2'))
model.add(MaxPooling2D(pool_size=(2, 2),name='block2_MaxPooling'))
model.add(SpatialDropout2D(0.25))

model.add(Conv2D(256, (3, 3), activation='relu',padding='same',name='block3_conv2_1'))
model.add(Conv2D(256, (3, 3), activation='relu',padding='same',name='block3_conv2_2'))
model.add(Conv2D(256, (3, 3), activation='relu',padding='same',name='block3_conv2_3'))
model.add(MaxPooling2D(pool_size=(2, 2),name='block3_MaxPooling'))
model.add(Dropout(0.25))

model.add(Conv2D(512, (3, 3), activation='relu',padding='same',name='block4_conv2_1'))
model.add(Conv2D(512, (3, 3), activation='relu',padding='same',name='block4_conv2_2'))
model.add(Conv2D(512, (3, 3), activation='relu',padding='same',name='block4_conv2_3'))
model.add(MaxPooling2D(pool_size=(2, 2),name='block4_MaxPooling'))
model.add(Dropout(0.25))

model.add(Conv2D(512, (3, 3), activation='relu',padding='same',name='block5_conv2_1'))
model.add(Conv2D(512, (3, 3), activation='relu',padding='same',name='block5_conv2_2'))
model.add(Conv2D(512, (3, 3), activation='relu',padding='same',name='block5_conv2_3'))
model.add(MaxPooling2D(pool_size=(2, 2),name='block5_MaxPooling'))
model.add(Dropout(0.25))

model.add(Flatten())
model.add(Dense(128, activation='relu',name='final_output_1'))
model.add(Dropout(0.5))
model.add(Dense(128, activation='relu',name='final_output_2'))
model.add(Dropout(0.5))
model.add(Dense(2, activation='sigmoid',name='class_output'))

optimizer = RMSprop(lr=1e-4)
objective = 'binary_crossentropy'
model.compile(loss=objective, optimizer=optimizer, metrics=['accuracy'])
EStop = EarlyStopping(monitor='val_acc', min_delta=0, 
                      patience=10, verbose=1, mode='auto')


# In[37]:


#%% Training and saving
history = model.fit(train_data, train_label, batch_size=64, epochs=100,shuffle=True, validation_split=0.2,callbacks=[EStop])

import time
timestr = time.strftime("%Y%m%d_%H%M%S")
model.save('catdog_model_{}.h5'.format(timestr)) 


# In[7]:


#讀取以前的model
from keras.models import load_model
model = load_model('catdog_model_20200213_192313.h5')
# history = load_model('catdog_model_20200213_192313.h5')


# In[5]:


#prediction


import numpy as np
from keras.preprocessing import image
test_image = image.load_img('D:/tailin/dataset/prediction/cat_or_dog_12.jpg', target_size = (128, 128))
test_image = image.img_to_array(test_image)
test_image = np.expand_dims(test_image, axis = 0)
result = model.predict(test_image)
# training_set.class_indices
print(result[0][0])
if result[0][0] <0.5:
    prediction = 'dog'
else:
    prediction = 'cat'
print(prediction)


# In[ ]:





# In[38]:


#%% Visualization
# Model Structure
from keras.utils import plot_model
plot_model(model, to_file='model_{}.png'.format(timestr),show_shapes=True, show_layer_names=True)


# In[45]:


# Training History
import collections
import pandas as pd
import matplotlib.pyplot as plt
hist = history.history
print(hist)
plt.plot(hist["val_loss"])


# In[46]:


# Count the number of epoch
for key, val in hist.items():
    numepo = len(np.asarray(val))
    break
hist = collections.OrderedDict(hist)
pd.DataFrame(hist).to_excel('model_{}_history.xlsx'.format(timestr), index=True)

import matplotlib.pyplot as plt

plt.plot(history.history['acc'])
plt.plot(history.history['val_acc'])
plt.title('Model accuracy')
plt.ylabel('accuracy')
plt.xlabel('epoch')
plt.legend(['train', 'test'], loc='upper left')
plt.show()
plt.savefig('Model accuracy_{}.png'.format(timestr))
plt.cla()

plt.plot(history.history['loss'])
plt.plot(history.history['val_loss'])
plt.title('Model loss')
plt.ylabel('loss')
plt.xlabel('epoch')
plt.legend(['train', 'test'], loc='upper left')
plt.show()
plt.savefig('Model loss_{}.png'.format(timestr))
plt.cla()


# In[13]:


#%% Confusion Matrix
import itertools
from sklearn.metrics import confusion_matrix

def plot_confusion_matrix(cm, classes_x,classes_y,
                          normalize=False,
                          title='Confusion matrix',
                          cmap=plt.cm.Blues):
    """
    This function prints and plots the confusion matrix.
    Normalization can be applied by setting `normalize=True`.
    """
    if normalize:
        cm = cm.astype('float') / cm.sum(axis=1)[:, np.newaxis]
        print("Normalized confusion matrix")
    else:
        print('Confusion matrix, without normalization')

    print(cm)
    plt.clf()
    plt.cla()
    plt.style.use('default')
    plt.imshow(cm, interpolation='nearest', cmap=cmap)
    plt.grid(False)
    plt.title('Confusion Matrix')
    plt.colorbar()
    tick_marks_x = np.arange(len(classes_x))
    tick_marks_y = np.arange(len(classes_y))
    plt.xticks(tick_marks_x, classes_x, rotation=45)
    plt.yticks(tick_marks_y, classes_y)

    fmt = '.2f' if normalize else 'd'
    thresh = cm.max() / 2.
    for i, j in itertools.product(range(cm.shape[0]), range(cm.shape[1])):
        plt.text(j, i, format(cm[i, j], fmt),
                 horizontalalignment="center",
                 color="white" if cm[i, j] > thresh else "black")

    plt.tight_layout()
    plt.ylabel('True label')
    plt.xlabel('Predicted label')
    plt.savefig(title+'.png',dpi=350 ,bbox_inches='tight')
    plt.close()
    

test_pred  = model.predict(test_data)
cnf_matrix = confusion_matrix(np.argmax(test_label, axis=1).reshape(-1,1),
                              np.argmax(test_pred, axis=1).reshape(-1,1))
np.set_printoptions(precision=2)
plot_confusion_matrix(cnf_matrix,['Cats','Dogs'],['Cats','Dogs'],normalize=True,title='Confusion Matrix Nor {}'.format(timestr))


# In[14]:


#%% t-SNE
from keras.models import Model
from sklearn.manifold import TSNE
import pandas as pd

def plot_tSNE(model,layername,input_data,input_label,modelname='Model',label_name=['label one']):
    batch_size=64
    intermediate_layer_model = Model(inputs=model.input,
                                     outputs=model.get_layer(layername).output)
    intermediate_output = intermediate_layer_model.predict(
            input_data, batch_size=batch_size, verbose=1)
    
    Y = TSNE(n_components=2, init='random', random_state=0, perplexity=30, 
             verbose=1).fit_transform(intermediate_output.reshape(intermediate_output.shape[0],-1))
    #
    #Reshape the result of t-SNE for easy to use
    #train_label_draw = keras.utils.to_categorical(train_label_draw, num_classes=(label_for_draw+1))
    #test_label_draw = keras.utils.to_categorical(test_label_draw, num_classes=(label_for_draw+1))
    
    layer_output_label = np.argmax(input_label, axis=1)
    df = pd.DataFrame(dict(x=Y[:,0], y=Y[:,1], label=layer_output_label))
    groups = df.groupby('label')
    
    # Plot tSNE
    plt.cla()
    plt.clf()
    plt.cla()
    plt.close()
    fig, ax = plt.subplots(figsize=(10,8))
    
    ax.margins(0.05)  # Optional, just adds 5% padding to the autoscaling
    for label, group in groups:
        name = label_name[label]
        point,=ax.plot(group.x, group.y, marker='o', linestyle='', ms=5, label=name, alpha=0.8)
    
    plt.title('t-SNE Scattering Plot : {}'.format(layername))
    ax.legend(prop={'size': 10})
    fig.savefig(modelname +'_tSNE_{}.png'.format(layername),transparent=False, dpi=350)
    
    # Save tSNE Result
    writer = pd.ExcelWriter(modelname + '_tSNE_{}.xlsx'.format(layername))
    df.to_excel(writer,'Intensity',float_format='%.2f') # float_format 控制精度
    writer.save()

plot_tSNE(model,
          layername = 'final_output_2',
          input_data = test_data,
          input_label = test_label,
          modelname = '{}'.format(timestr),
          label_name = ['Cat','Dog'])


# In[29]:


#%% CAM
import keras.backend as K
import cv2
from keras.preprocessing.image import array_to_img
from keras.preprocessing import image
from imageio import imsave
label_name = {0:'Cat',1:'Dog'}
index = 10
# img = test_data[index]
# img_show=array_to_img(img)
# imsave('Image_{}.png'.format(index),img_show)
# img=img.reshape(-1,128,128,3)
# pred = model.predict(img)

img = image.load_img('D:/tailin/dataset/prediction/cat_or_dog_22.jpg', target_size = (128, 128))
img_show = image.img_to_array(img)
imsave('Image_{}.png'.format(index),img_show)
img = np.expand_dims(img, axis = 0)
pred = model.predict(img)

print("This photo is a {}, predicted as a {} ".format(label_name[np.argmax(test_label[index])],label_name[np.argmax(pred)]))

target_output = model.get_output_at(0)[:,np.argmax(pred)]   # 0 is the label of cat 
last_conv_layer = model.get_layer('block5_conv2_3')
grads = K.gradients(target_output, last_conv_layer.output)[0]
pooled_grads = K.mean(grads, axis=(0, 1, 2))
iterate = K.function([model.get_input_at(0)], [pooled_grads, last_conv_layer.output])
pooled_grads_value, conv_layer_output_value = iterate([img])
for i in range(len(pooled_grads_value)):
#           conv_layer_output_value[:, :, :, i] *= class_weights[i]
   conv_layer_output_value[:, :, :, i] *=pooled_grads_value[i]

# The channel-wise mean of the resulting feature map
# is our heatmap of class activation
heatmap =  np.sum(conv_layer_output_value, axis=3)
heatmap -= np.min(heatmap)
heatmap =  np.maximum(heatmap, 0)
heatmap /= np.max(heatmap)
heatmap =  np.nan_to_num(heatmap, copy=True)
heatmap =  heatmap.reshape(heatmap.shape[1],heatmap.shape[2])
heatmap =  cv2.resize(heatmap, (img.shape[1], img.shape[2]), interpolation = cv2.INTER_CUBIC)
#heatmap =  np.maximum(heatmap, 0)
heatmap =  np.uint8(255 * heatmap)
# We apply the heatmap to the original image
heatmap = cv2.applyColorMap(heatmap, cv2.COLORMAP_JET)
superimposed_img = heatmap * 0.4 + img_show
cv2.imwrite(r'cam_{}.jpg'.format(index), heatmap)
cv2.imwrite(r'superimposed_{}.jpg'.format(index), superimposed_img)


# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:




