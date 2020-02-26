#!/usr/bin/env python
# coding: utf-8

# In[23]:


def load_model(): 
    import keras
    from keras.models import load_model
    model = load_model("E:/paper/catdog_model_20200213_192313.h5")
#     print("model loaded")
    return model


# In[24]:


#prediction
def predict(argsPath,model):
    import numpy as np
    from keras.preprocessing import image
#     argsPath = sys.argv[1]  #'E:/paper/dataset/prediction/cat_or_dog_12.jpg'
    test_image = image.load_img(argsPath, target_size = (128, 128))
    test_image = image.img_to_array(test_image)
    test_image = np.expand_dims(test_image, axis = 0)
    result = model.predict(test_image)
    # training_set.class_indices
#     print(result[0][0])
    if result[0][0] <0.5:
        prediction = 'dog'
    else:
        prediction = 'cat'
    print(prediction)
    return prediction,result


# In[27]:


def save(prediction,result):
    with open("E:/paper/paper/paper/py/temp.txt","w",encoding="utf8") as f:
        f.write(prediction+" "+str(result[0][0]))


# In[ ]:


def chooser():
    import tkinter as tk
    from tkinter import filedialog

    root = tk.Tk()
    root.withdraw()

    file_path = filedialog.askopenfilename()
#     print(file_path)
    return file_path


# In[28]:


if __name__ == "__main__":
    import sys
    import traceback
    try:
        model=load_model()
        pa=chooser()
        print(pa)
#         sys.argv[1]="E:/paper/dataset/prediction/cat_or_dog_12.jpg"
        pre,rlt = predict(pa,model)
        save(pre,rlt)
    except Exception as e:
#         print(e)
        error_class = e.__class__.__name__ #取得錯誤類型
        detail = e.args[0] #取得詳細內容
        cl, exc, tb = sys.exc_info() #取得Call Stack
        lastCallStack = traceback.extract_tb(tb)[-1] #取得Call Stack的最後一筆資料
        fileName = lastCallStack[0] #取得發生的檔案名稱
        lineNum = lastCallStack[1] #取得發生的行號
        funcName = lastCallStack[2] #取得發生的函數名稱
        errMsg = "File \"{}\", line {}, in {}: [{}] {}".format(fileName, lineNum, funcName, error_class, detail)
#         print(errMsg)


# In[31]:





# In[ ]:




