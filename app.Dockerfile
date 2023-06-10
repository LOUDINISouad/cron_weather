FROM python
RUN pip install pandas
RUN mkdir /home/report
RUN mkdir /home/data
COPY requirements.txt requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY . .
