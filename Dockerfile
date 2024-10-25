
FROM jupyter/scipy-notebook:latest

COPY model.ipynb /home/jovyan/
COPY ./dataset_teeth /home/jovyan/

RUN pip install numpy opencv-python pillow tk ultralytics pyqt5
RUN pip install torch torchvision torchaudio

WORKDIR /home/jovyan/

EXPOSE 8888

CMD ["start-notebook.py"]
