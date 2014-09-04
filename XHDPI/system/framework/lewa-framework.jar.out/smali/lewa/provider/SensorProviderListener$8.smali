.class Llewa/provider/SensorProviderListener$8;
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
.field private mLast_gx:F

.field private mLast_gy:F

.field private mLast_gz:F

.field private mLast_ox:F

.field private mLast_oy:F

.field private mLast_oz:F

.field final synthetic this$0:Llewa/provider/SensorProviderListener;


# direct methods
.method constructor <init>(Llewa/provider/SensorProviderListener;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 359
    iput-object p1, p0, Llewa/provider/SensorProviderListener$8;->this$0:Llewa/provider/SensorProviderListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput v0, p0, Llewa/provider/SensorProviderListener$8;->mLast_ox:F

    .line 361
    iput v0, p0, Llewa/provider/SensorProviderListener$8;->mLast_oy:F

    .line 362
    iput v0, p0, Llewa/provider/SensorProviderListener$8;->mLast_oz:F

    .line 363
    iput v0, p0, Llewa/provider/SensorProviderListener$8;->mLast_gx:F

    .line 364
    iput v0, p0, Llewa/provider/SensorProviderListener$8;->mLast_gy:F

    .line 365
    iput v0, p0, Llewa/provider/SensorProviderListener$8;->mLast_gz:F

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 407
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 16
    .parameter "event"

    .prologue
    .line 369
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v14}, Landroid/hardware/Sensor;->getType()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 370
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v15, 0x0

    aget v6, v14, v15

    .line 371
    .local v6, gx:F
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v15, 0x1

    aget v7, v14, v15

    .line 372
    .local v7, gy:F
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v15, 0x2

    aget v8, v14, v15

    .line 373
    .local v8, gz:F
    move-object/from16 v0, p0

    iput v6, v0, Llewa/provider/SensorProviderListener$8;->mLast_gx:F

    .line 374
    move-object/from16 v0, p0

    iput v7, v0, Llewa/provider/SensorProviderListener$8;->mLast_gy:F

    .line 375
    move-object/from16 v0, p0

    iput v8, v0, Llewa/provider/SensorProviderListener$8;->mLast_gz:F

    .line 377
    .end local v6           #gx:F
    .end local v7           #gy:F
    .end local v8           #gz:F
    :cond_0
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v14}, Landroid/hardware/Sensor;->getType()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_1

    .line 378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 379
    .local v1, currentUpdateTime:J
    move-object/from16 v0, p0

    iget-object v14, v0, Llewa/provider/SensorProviderListener$8;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->mLastUpdateTime:J
    invoke-static {v14}, Llewa/provider/SensorProviderListener;->access$1700(Llewa/provider/SensorProviderListener;)J

    move-result-wide v14

    sub-long v12, v1, v14

    .line 380
    .local v12, timeInterval:J
    const-wide/16 v14, 0x3e8

    cmp-long v14, v12, v14

    if-gez v14, :cond_2

    .line 402
    .end local v1           #currentUpdateTime:J
    .end local v12           #timeInterval:J
    :cond_1
    :goto_0
    return-void

    .line 382
    .restart local v1       #currentUpdateTime:J
    .restart local v12       #timeInterval:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Llewa/provider/SensorProviderListener$8;->this$0:Llewa/provider/SensorProviderListener;

    #setter for: Llewa/provider/SensorProviderListener;->mLastUpdateTime:J
    invoke-static {v14, v1, v2}, Llewa/provider/SensorProviderListener;->access$1702(Llewa/provider/SensorProviderListener;J)J

    .line 383
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v15, 0x0

    aget v9, v14, v15

    .line 384
    .local v9, ox:F
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v15, 0x1

    aget v10, v14, v15

    .line 385
    .local v10, oy:F
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v15, 0x2

    aget v11, v14, v15

    .line 386
    .local v11, oz:F
    move-object/from16 v0, p0

    iget v14, v0, Llewa/provider/SensorProviderListener$8;->mLast_ox:F

    sub-float v3, v9, v14

    .line 387
    .local v3, deltaX:F
    move-object/from16 v0, p0

    iget v14, v0, Llewa/provider/SensorProviderListener$8;->mLast_oy:F

    sub-float v4, v10, v14

    .line 388
    .local v4, deltalY:F
    move-object/from16 v0, p0

    iget v14, v0, Llewa/provider/SensorProviderListener$8;->mLast_oz:F

    sub-float v5, v11, v14

    .line 389
    .local v5, deltalZ:F
    move-object/from16 v0, p0

    iput v9, v0, Llewa/provider/SensorProviderListener$8;->mLast_ox:F

    .line 390
    move-object/from16 v0, p0

    iput v10, v0, Llewa/provider/SensorProviderListener$8;->mLast_oy:F

    .line 391
    move-object/from16 v0, p0

    iput v11, v0, Llewa/provider/SensorProviderListener$8;->mLast_oz:F

    .line 392
    move-object/from16 v0, p0

    iget v14, v0, Llewa/provider/SensorProviderListener$8;->mLast_gz:F

    const/high16 v15, -0x3ed0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Llewa/provider/SensorProviderListener$8;->mLast_gz:F

    const/high16 v15, -0x3ef0

    cmpg-float v14, v14, v15

    if-gez v14, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Llewa/provider/SensorProviderListener$8;->mLast_oy:F

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/high16 v15, 0x4325

    cmpl-float v14, v14, v15

    if-lez v14, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Llewa/provider/SensorProviderListener$8;->mLast_oz:F

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/high16 v15, 0x4170

    cmpg-float v14, v14, v15

    if-gez v14, :cond_1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/high16 v15, 0x4000

    cmpg-float v14, v14, v15

    if-gez v14, :cond_1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/high16 v15, 0x4000

    cmpg-float v14, v14, v15

    if-gez v14, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/high16 v15, 0x4120

    cmpg-float v14, v14, v15

    if-gez v14, :cond_1

    .line 397
    move-object/from16 v0, p0

    iget-object v14, v0, Llewa/provider/SensorProviderListener$8;->this$0:Llewa/provider/SensorProviderListener;

    const/4 v15, 0x1

    #setter for: Llewa/provider/SensorProviderListener;->mPhoneStatusDown:Z
    invoke-static {v14, v15}, Llewa/provider/SensorProviderListener;->access$2002(Llewa/provider/SensorProviderListener;Z)Z

    .line 398
    move-object/from16 v0, p0

    iget-object v14, v0, Llewa/provider/SensorProviderListener$8;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->onPhoneStaticScreenDownListener:Llewa/provider/SensorProviderListener$OnPhoneStaticScreenDownListener;
    invoke-static {v14}, Llewa/provider/SensorProviderListener;->access$2100(Llewa/provider/SensorProviderListener;)Llewa/provider/SensorProviderListener$OnPhoneStaticScreenDownListener;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 399
    move-object/from16 v0, p0

    iget-object v14, v0, Llewa/provider/SensorProviderListener$8;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->onPhoneStaticScreenDownListener:Llewa/provider/SensorProviderListener$OnPhoneStaticScreenDownListener;
    invoke-static {v14}, Llewa/provider/SensorProviderListener;->access$2100(Llewa/provider/SensorProviderListener;)Llewa/provider/SensorProviderListener$OnPhoneStaticScreenDownListener;

    move-result-object v14

    invoke-interface {v14}, Llewa/provider/SensorProviderListener$OnPhoneStaticScreenDownListener;->onPhoneScreenDown()V

    goto/16 :goto_0
.end method
