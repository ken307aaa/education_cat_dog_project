#!/usr/bin/env python
# coding: utf-8

# In[1]:


# Import Keras libraries and packages
from keras.models import Sequential  #用來啟動 NN
from keras.layers import Conv2D  # Convolution Operation
from keras.layers import MaxPooling2D # Pooling
from keras.layers import Flatten
from keras.layers import Dense # Fully Connected Networks


# In[10]:


import shutil
import os
cutlist=os.listdir("D:/tailin/dataset/training_set/Cat")
cutlist2 = os.listdir("D:/tailin/dataset/training_set/Dog")
for i in cutlist[int(len(cutlist)/3)*2:]:
    shutil.copyfile("D:/tailin/dataset/training_set/Cat/"+i,"D:/tailin/dataset/test_set/Cat/"+i)
    os.remove("D:/tailin/dataset/training_set/Cat/"+i)
for i in cutlist2[int(len(cutlist2)/3)*2:]:
    shutil.copyfile("D:/tailin/dataset/training_set/Dog/"+i,"D:/tailin/dataset/test_set/Dog/"+i)
    os.remove("D:/tailin/dataset/training_set/Dog/"+i)


# In[3]:


import matplotlib.pyplot as plt
import keras
get_ipython().run_line_magic('matplotlib', 'inline')
class LossHistory(keras.callbacks.Callback):
    def on_train_begin(self, logs={}):
        self.losses = {'batch':[], 'epoch':[]}
        self.accuracy = {'batch':[], 'epoch':[]}
        self.val_loss = {'batch':[], 'epoch':[]}
        self.val_acc = {'batch':[], 'epoch':[]}

    def on_batch_end(self, batch, logs={}):
        self.losses['batch'].append(logs.get('loss'))
        self.accuracy['batch'].append(logs.get('acc'))
        self.val_loss['batch'].append(logs.get('val_loss'))
        self.val_acc['batch'].append(logs.get('val_acc'))

    def on_epoch_end(self, batch, logs={}):
        self.losses['epoch'].append(logs.get('loss'))
        self.accuracy['epoch'].append(logs.get('acc'))
        self.val_loss['epoch'].append(logs.get('val_loss'))
        self.val_acc['epoch'].append(logs.get('val_acc'))

    def loss_plot(self, loss_type):
        iters = range(len(self.losses[loss_type]))
        plt.figure()
        # acc
        plt.plot(iters, self.accuracy[loss_type], 'r', label='train acc')
        # loss
        plt.plot(iters, self.losses[loss_type], 'g', label='train loss')
        if loss_type == 'epoch':
            # val_acc
            plt.plot(iters, self.val_acc[loss_type], 'b', label='val acc')
            # val_loss
            plt.plot(iters, self.val_loss[loss_type], 'k', label='val loss')
        plt.grid(True)
        plt.xlabel(loss_type)
        plt.ylabel('acc-loss')
        plt.legend(loc="upper right")
        plt.show()


# In[11]:


# initializing CNN
model = Sequential()  
model.add(Conv2D(32, 3, 3, input_shape = (128, 128, 3), activation = 'relu'))
model.add(MaxPooling2D(pool_size = (2, 2)))


# In[12]:


# Second convolutional layer
model.add(Conv2D(32, 3, 3, activation = 'relu'))
model.add(MaxPooling2D(pool_size = (2, 2)))

# Third convolutional layer
model.add(Conv2D(64, 3, 3, activation = 'relu'))
model.add(MaxPooling2D(pool_size=(2, 2)))


# In[13]:


model.add(Flatten())


# In[14]:


model.add(Dense(output_dim = 128, activation = 'relu'))
model.add(Dense(output_dim = 1, activation = 'sigmoid'))


# In[15]:


model.compile(optimizer = 'adam', loss = 'binary_crossentropy', metrics = ['accuracy'])


# In[21]:


from keras.preprocessing.image import ImageDataGenerator
history =  LossHistory() 
train_datagen = ImageDataGenerator(rescale = 1./255, shear_range = 0.2, zoom_range = 0.2, horizontal_flip = True)
test_datagen = ImageDataGenerator(rescale = 1./255)
training_set = train_datagen.flow_from_directory('D:/tailin/dataset/training_set', target_size = (128, 128), batch_size = 32, class_mode = 'binary')
test_set = test_datagen.flow_from_directory('D:/tailin/dataset/test_set', target_size = (128, 128), batch_size = 32, class_mode = 'binary')
model.fit_generator(training_set, samples_per_epoch = 400, nb_epoch = 5, validation_data = test_set, nb_val_samples = 100,callbacks=[history])


# In[19]:


#輸入一張圖，看模型的預測是否正確的程式
import numpy as np
from keras.preprocessing import image

# test_image = image.load_img('E:/paper/dataset/training_set/Cat/1.jpg', target_size = (128, 128))
test_image = image.load_img('D:/tailin/dataset/prediction/cat_or_dog.jpg', target_size = (128, 128))
test_image = image.img_to_array(test_image)
test_image = np.expand_dims(test_image, axis = 0)
result = model.predict(test_image)
training_set.class_indices
print(result[0][0])

if result[0][0] <0.5:
    prediction = 'cat'
else:
    prediction = 'dog'
print(prediction)


# In[20]:


history.loss_plot('epoch')


# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:




