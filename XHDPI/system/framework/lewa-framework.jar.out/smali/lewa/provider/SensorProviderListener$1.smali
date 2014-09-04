.class Llewa/provider/SensorProviderListener$1;
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
.field private mLastX:F

.field private mLastY:F

.field private mLastZ:F

.field final synthetic this$0:Llewa/provider/SensorProviderListener;


# direct methods
.method constructor <init>(Llewa/provider/SensorProviderListener;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 138
    iput-object p1, p0, Llewa/provider/SensorProviderListener$1;->this$0:Llewa/provider/SensorProviderListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput v0, p0, Llewa/provider/SensorProviderListener$1;->mLastX:F

    .line 140
    iput v0, p0, Llewa/provider/SensorProviderListener$1;->mLastY:F

    .line 141
    iput v0, p0, Llewa/provider/SensorProviderListener$1;->mLastZ:F

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 146
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14
    .parameter "event"

    .prologue
    const/4 v13, 0x1

    .line 151
    iget-object v11, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v11}, Landroid/hardware/Sensor;->getType()I

    move-result v11

    if-ne v11, v13, :cond_0

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 153
    .local v0, currentUpdateTime:J
    iget-object v11, p0, Llewa/provider/SensorProviderListener$1;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->mLastShakeTime:J
    invoke-static {v11}, Llewa/provider/SensorProviderListener;->access$000(Llewa/provider/SensorProviderListener;)J

    move-result-wide v11

    sub-long v9, v0, v11

    .line 154
    .local v9, timeInterval:J
    const-wide/16 v11, 0x96

    cmp-long v11, v9, v11

    if-gez v11, :cond_1

    .line 173
    .end local v0           #currentUpdateTime:J
    .end local v9           #timeInterval:J
    :cond_0
    :goto_0
    return-void

    .line 156
    .restart local v0       #currentUpdateTime:J
    .restart local v9       #timeInterval:J
    :cond_1
    iget-object v11, p0, Llewa/provider/SensorProviderListener$1;->this$0:Llewa/provider/SensorProviderListener;

    #setter for: Llewa/provider/SensorProviderListener;->mLastShakeTime:J
    invoke-static {v11, v0, v1}, Llewa/provider/SensorProviderListener;->access$002(Llewa/provider/SensorProviderListener;J)J

    .line 157
    iget-object v11, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x0

    aget v5, v11, v12

    .line 158
    .local v5, gx:F
    iget-object v11, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v11, v13

    .line 159
    .local v6, gy:F
    iget-object v11, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x2

    aget v7, v11, v12

    .line 160
    .local v7, gz:F
    iget v11, p0, Llewa/provider/SensorProviderListener$1;->mLastX:F

    sub-float v2, v5, v11

    .line 161
    .local v2, deltaX:F
    iget v11, p0, Llewa/provider/SensorProviderListener$1;->mLastY:F

    sub-float v3, v6, v11

    .line 162
    .local v3, deltaY:F
    iget v11, p0, Llewa/provider/SensorProviderListener$1;->mLastZ:F

    sub-float v4, v7, v11

    .line 163
    .local v4, deltaZ:F
    mul-float v11, v2, v2

    mul-float v12, v3, v3

    add-float/2addr v11, v12

    mul-float v12, v4, v4

    add-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v11, v11

    long-to-float v12, v9

    div-float/2addr v11, v12

    const v12, 0x461c4000

    mul-float v8, v11, v12

    .line 164
    .local v8, speed:F
    const-string v11, "SensorProviderListener"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "speed:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v11, p0, Llewa/provider/SensorProviderListener$1;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->mShakeSpeed:F
    invoke-static {v11}, Llewa/provider/SensorProviderListener;->access$100(Llewa/provider/SensorProviderListener;)F

    move-result v11

    cmpl-float v11, v8, v11

    if-lez v11, :cond_2

    .line 166
    iget-object v11, p0, Llewa/provider/SensorProviderListener$1;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->onShakeAndShakeListener:Llewa/provider/SensorProviderListener$OnShakeAndShakeListener;
    invoke-static {v11}, Llewa/provider/SensorProviderListener;->access$200(Llewa/provider/SensorProviderListener;)Llewa/provider/SensorProviderListener$OnShakeAndShakeListener;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 167
    iget-object v11, p0, Llewa/provider/SensorProviderListener$1;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->onShakeAndShakeListener:Llewa/provider/SensorProviderListener$OnShakeAndShakeListener;
    invoke-static {v11}, Llewa/provider/SensorProviderListener;->access$200(Llewa/provider/SensorProviderListener;)Llewa/provider/SensorProviderListener$OnShakeAndShakeListener;

    move-result-object v11

    invoke-interface {v11}, Llewa/provider/SensorProviderListener$OnShakeAndShakeListener;->onShake()V

    .line 169
    :cond_2
    iput v5, p0, Llewa/provider/SensorProviderListener$1;->mLastX:F

    .line 170
    iput v6, p0, Llewa/provider/SensorProviderListener$1;->mLastY:F

    .line 171
    iput v7, p0, Llewa/provider/SensorProviderListener$1;->mLastZ:F

    goto :goto_0
.end method
