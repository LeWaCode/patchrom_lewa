.class Llewa/provider/SensorProviderListener$5;
.super Ljava/lang/Object;
.source "SensorProviderListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/provider/SensorProviderListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/provider/SensorProviderListener;


# direct methods
.method constructor <init>(Llewa/provider/SensorProviderListener;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Llewa/provider/SensorProviderListener$5;->this$0:Llewa/provider/SensorProviderListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 277
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 262
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 263
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v1, v2

    .line 264
    .local v0, distance:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x40a0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iget-object v1, p0, Llewa/provider/SensorProviderListener$5;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v1}, Llewa/provider/SensorProviderListener;->access$1400(Llewa/provider/SensorProviderListener;)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 265
    iget-object v1, p0, Llewa/provider/SensorProviderListener$5;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->onProximityListener:Llewa/provider/SensorProviderListener$OnProximityListener;
    invoke-static {v1}, Llewa/provider/SensorProviderListener;->access$1500(Llewa/provider/SensorProviderListener;)Llewa/provider/SensorProviderListener$OnProximityListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Llewa/provider/SensorProviderListener$5;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->onProximityListener:Llewa/provider/SensorProviderListener$OnProximityListener;
    invoke-static {v1}, Llewa/provider/SensorProviderListener;->access$1500(Llewa/provider/SensorProviderListener;)Llewa/provider/SensorProviderListener$OnProximityListener;

    move-result-object v1

    invoke-interface {v1}, Llewa/provider/SensorProviderListener$OnProximityListener;->onProximity()V

    .line 267
    const-string v1, "SensorProviderListener"

    const-string v2, "onProximity......"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .end local v0           #distance:F
    :cond_0
    return-void
.end method
