.class Llewa/provider/SensorProviderListener$10;
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
.field changeFlag:Z

.field final synthetic this$0:Llewa/provider/SensorProviderListener;


# direct methods
.method constructor <init>(Llewa/provider/SensorProviderListener;)V
    .locals 1
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Llewa/provider/SensorProviderListener$10;->this$0:Llewa/provider/SensorProviderListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/provider/SensorProviderListener$10;->changeFlag:Z

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 441
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 446
    iget-object v8, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v8}, Landroid/hardware/Sensor;->getType()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_1

    .line 447
    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v8, v6

    .line 448
    .local v2, distance:F
    const/4 v8, 0x0

    cmpl-float v8, v2, v8

    if-ltz v8, :cond_0

    const/high16 v8, 0x40a0

    cmpg-float v8, v2, v8

    if-gez v8, :cond_0

    iget-object v8, p0, Llewa/provider/SensorProviderListener$10;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v8}, Llewa/provider/SensorProviderListener;->access$1400(Llewa/provider/SensorProviderListener;)Landroid/hardware/Sensor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v8

    cmpg-float v8, v2, v8

    if-gez v8, :cond_0

    move v6, v7

    :cond_0
    iput-boolean v6, p0, Llewa/provider/SensorProviderListener$10;->changeFlag:Z

    .line 450
    .end local v2           #distance:F
    :cond_1
    iget-object v6, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    if-ne v6, v7, :cond_2

    .line 451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 452
    .local v0, currentUpdateTime:J
    iget-object v6, p0, Llewa/provider/SensorProviderListener$10;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->mCallTime:J
    invoke-static {v6}, Llewa/provider/SensorProviderListener;->access$2400(Llewa/provider/SensorProviderListener;)J

    move-result-wide v8

    sub-long v4, v0, v8

    .line 453
    .local v4, timeInterval:J
    iget-object v6, p0, Llewa/provider/SensorProviderListener$10;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->mCallDelayTime:I
    invoke-static {v6}, Llewa/provider/SensorProviderListener;->access$2500(Llewa/provider/SensorProviderListener;)I

    move-result v6

    int-to-long v8, v6

    cmp-long v6, v4, v8

    if-gez v6, :cond_3

    .line 463
    .end local v0           #currentUpdateTime:J
    .end local v4           #timeInterval:J
    :cond_2
    :goto_0
    return-void

    .line 455
    .restart local v0       #currentUpdateTime:J
    .restart local v4       #timeInterval:J
    :cond_3
    iget-object v6, p0, Llewa/provider/SensorProviderListener$10;->this$0:Llewa/provider/SensorProviderListener;

    #setter for: Llewa/provider/SensorProviderListener;->mCallTime:J
    invoke-static {v6, v0, v1}, Llewa/provider/SensorProviderListener;->access$2402(Llewa/provider/SensorProviderListener;J)J

    .line 456
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v6, v7

    .line 457
    .local v3, gy:F
    iget-boolean v6, p0, Llewa/provider/SensorProviderListener$10;->changeFlag:Z

    if-eqz v6, :cond_2

    const/high16 v6, 0x40e0

    cmpl-float v6, v3, v6

    if-lez v6, :cond_2

    .line 458
    iget-object v6, p0, Llewa/provider/SensorProviderListener$10;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->onSmartCallListener:Llewa/provider/SensorProviderListener$OnSmartCallListener;
    invoke-static {v6}, Llewa/provider/SensorProviderListener;->access$2600(Llewa/provider/SensorProviderListener;)Llewa/provider/SensorProviderListener$OnSmartCallListener;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 459
    iget-object v6, p0, Llewa/provider/SensorProviderListener$10;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->onSmartCallListener:Llewa/provider/SensorProviderListener$OnSmartCallListener;
    invoke-static {v6}, Llewa/provider/SensorProviderListener;->access$2600(Llewa/provider/SensorProviderListener;)Llewa/provider/SensorProviderListener$OnSmartCallListener;

    move-result-object v6

    invoke-interface {v6}, Llewa/provider/SensorProviderListener$OnSmartCallListener;->onSmartCall()V

    goto :goto_0
.end method
