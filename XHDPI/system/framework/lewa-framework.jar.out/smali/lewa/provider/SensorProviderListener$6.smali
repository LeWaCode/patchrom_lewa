.class Llewa/provider/SensorProviderListener$6;
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
.field proximityActive:Z

.field proximityFlag:Z

.field sensorFlag:Z

.field final synthetic this$0:Llewa/provider/SensorProviderListener;


# direct methods
.method constructor <init>(Llewa/provider/SensorProviderListener;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 280
    iput-object p1, p0, Llewa/provider/SensorProviderListener$6;->this$0:Llewa/provider/SensorProviderListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-boolean v0, p0, Llewa/provider/SensorProviderListener$6;->sensorFlag:Z

    .line 282
    iput-boolean v0, p0, Llewa/provider/SensorProviderListener$6;->proximityActive:Z

    .line 283
    iput-boolean v0, p0, Llewa/provider/SensorProviderListener$6;->proximityFlag:Z

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 306
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 287
    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 288
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v3, v1

    .line 289
    .local v0, distance:F
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    iget-object v3, p0, Llewa/provider/SensorProviderListener$6;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v3}, Llewa/provider/SensorProviderListener;->access$1400(Llewa/provider/SensorProviderListener;)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Llewa/provider/SensorProviderListener$6;->sensorFlag:Z

    .line 290
    iget-boolean v1, p0, Llewa/provider/SensorProviderListener$6;->sensorFlag:Z

    if-eqz v1, :cond_2

    .line 291
    iput-boolean v2, p0, Llewa/provider/SensorProviderListener$6;->proximityActive:Z

    .line 295
    :goto_0
    iget-boolean v1, p0, Llewa/provider/SensorProviderListener$6;->proximityActive:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Llewa/provider/SensorProviderListener$6;->proximityFlag:Z

    if-nez v1, :cond_1

    .line 296
    iget-object v1, p0, Llewa/provider/SensorProviderListener$6;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->onOnlyProximityListener:Llewa/provider/SensorProviderListener$OnOnlyProximityListener;
    invoke-static {v1}, Llewa/provider/SensorProviderListener;->access$1600(Llewa/provider/SensorProviderListener;)Llewa/provider/SensorProviderListener$OnOnlyProximityListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 297
    iget-object v1, p0, Llewa/provider/SensorProviderListener$6;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->onOnlyProximityListener:Llewa/provider/SensorProviderListener$OnOnlyProximityListener;
    invoke-static {v1}, Llewa/provider/SensorProviderListener;->access$1600(Llewa/provider/SensorProviderListener;)Llewa/provider/SensorProviderListener$OnOnlyProximityListener;

    move-result-object v1

    invoke-interface {v1}, Llewa/provider/SensorProviderListener$OnOnlyProximityListener;->onOnlyProximity()V

    .line 300
    .end local v0           #distance:F
    :cond_1
    return-void

    .line 293
    .restart local v0       #distance:F
    :cond_2
    iput-boolean v2, p0, Llewa/provider/SensorProviderListener$6;->proximityFlag:Z

    goto :goto_0
.end method
