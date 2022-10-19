import stellargraph as sg
from tensorflow import keras
from keras.callbacks import EarlyStopping
import matplotlib.pyplot as plt
import pandas as pd
import keras.losses
import tensorflow as tf
import dataset


def plot_loss_epoch(history):
    plt.plot(history['loss'])
    plt.title('model loss')
    plt.ylabel('loss')
    plt.xlabel('epoch')
    plt.legend(['train'], loc='upper right')
    plt.savefig("pretraining_plot.png")
    plt.show()


def plot_all(history):
    plt.plot(history.history['acc'])
    plt.plot(history.history['val_acc'])
    plt.title('model accuracy')
    plt.ylabel('accuracy')
    plt.xlabel('epoch')
    plt.legend(['train', 'validation'], loc='upper left')
    plt.savefig("pretrained_plot_accuracy.png")
    plt.show()
    plt.plot(history.history['loss'])
    plt.plot(history.history['val_loss'])
    plt.title('model loss')
    plt.ylabel('loss')
    plt.xlabel('epoch')
    plt.legend(['train', 'validation'], loc='upper right')
    plt.savefig("pretrained_plot_loss.png")
    plt.show()


def handle_training(module):
    train_gen = module.get_train_gen()
    model = module.get_model()
    history_log = keras.callbacks.CSVLogger(
        "history_log.csv",
        separator=",",
        append=True
    )
    history = model.fit(
        train_gen,
        epochs=100,
        verbose=2,
        callbacks=[history_log]
    )
    model.save("pre-trained_model")
    plot_loss_epoch(history.history)
    new_model = module.model_retrain(module.get_data_group())
    prediction = EarlyStopping(
        monitor="val_acc", patience=20, restore_best_weights=True
    )
    train_gen, test_gen, val_gen = module.get_gen()
    pretrained_history = new_model.fit(
        train_gen,
        epochs=200,
        verbose=2,
        validation_data=module.val_gen,
        callbacks=[prediction],
    )
    plot_all(pretrained_history)
    new_model.save("finalised_model")








