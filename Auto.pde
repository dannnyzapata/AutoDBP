
import android.os.Bundle;  // 1
import android.content.Intent;  // 2

import ketai.net.bluetooth.*;
import ketai.ui.*;
import ketai.net.*;

import ketai.sensors.*;

KetaiSensor sensor;
PVector accelerometer;
float light, proximity;
KetaiLocation location; // 1
double longitude, latitude, altitude;

KetaiList connectionList;  // 4
String info = "";  // 5
boolean isConfiguring = true;
String UIText;

ArrayList<String> devices = new ArrayList<String>();
boolean isWatching = false;

void setup()
{
  orientation(PORTRAIT);
  background(78, 93, 75);
  stroke(255);
    
  sensor = new KetaiSensor(this);
  sensor.start();
  sensor.list();
  accelerometer = new PVector();
  location = new KetaiLocation(this);
}

void draw()
{
  background(201, 223, 236);

  int tSize = 128;
  textAlign(CENTER);
  fill(38, 174, 232);
  text(alerta);
}
