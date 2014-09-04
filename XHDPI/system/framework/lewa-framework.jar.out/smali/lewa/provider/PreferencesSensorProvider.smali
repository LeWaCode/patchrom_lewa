.class public Llewa/provider/PreferencesSensorProvider;
.super Ljava/lang/Object;
.source "PreferencesSensorProvider.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static getShakeDegree(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sensor_shake_value"

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSmartCallDelayTime(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sensor_call_delay_value"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getTriggerDegree(D)D
    .locals 6
    .parameter "degree"

    .prologue
    const-wide v4, 0x400921fb54442d18L

    .line 51
    mul-double v0, p0, v4

    const-wide v2, 0x4066800000000000L

    div-double/2addr v0, v2

    sub-double p0, v4, v0

    .line 52
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    .line 53
    const-wide/high16 v0, 0x4024

    mul-double/2addr p0, v0

    .line 54
    return-wide p0
.end method

.method public static getTurnDownDegree(Landroid/content/Context;)F
    .locals 3
    .parameter "context"

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sensor_turn_down_value"

    const/4 v2, -0x5

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public static getTurnUpDegree(Landroid/content/Context;)F
    .locals 3
    .parameter "context"

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sensor_turn_up_value"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public static setShakeDegree(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "degree"

    .prologue
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sensor_shake_value"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 22
    return-void
.end method

.method public static setSmartCallDelayTime(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "time"

    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sensor_call_delay_value"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 65
    return-void
.end method

.method public static setTurnDownDegree(Landroid/content/Context;D)V
    .locals 4
    .parameter "context"
    .parameter "degree"

    .prologue
    .line 31
    const-wide v1, 0x4056800000000000L

    cmpl-double v1, p1, v1

    if-ltz v1, :cond_0

    const-wide v1, 0x4066800000000000L

    cmpg-double v1, p1, v1

    if-gtz v1, :cond_0

    .line 32
    invoke-static {p1, p2}, Llewa/provider/PreferencesSensorProvider;->getTriggerDegree(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 33
    .local v0, degreeTrigger:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sensor_turn_down_value"

    neg-int v3, v0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 35
    .end local v0           #degreeTrigger:I
    :cond_0
    return-void
.end method

.method public static setTurnUpDegree(Landroid/content/Context;D)V
    .locals 3
    .parameter "context"
    .parameter "degree"

    .prologue
    .line 44
    const-wide v1, 0x4056800000000000L

    cmpl-double v1, p1, v1

    if-ltz v1, :cond_0

    const-wide v1, 0x4066800000000000L

    cmpg-double v1, p1, v1

    if-gtz v1, :cond_0

    .line 45
    invoke-static {p1, p2}, Llewa/provider/PreferencesSensorProvider;->getTriggerDegree(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 46
    .local v0, degreeTrigger:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sensor_turn_up_value"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 48
    .end local v0           #degreeTrigger:I
    :cond_0
    return-void
.end method
