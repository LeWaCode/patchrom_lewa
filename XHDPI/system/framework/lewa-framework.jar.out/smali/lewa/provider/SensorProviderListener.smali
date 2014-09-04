.class public Llewa/provider/SensorProviderListener;
.super Ljava/lang/Object;
.source "SensorProviderListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/provider/SensorProviderListener$OnOnlyProximityListener;,
        Llewa/provider/SensorProviderListener$OnSmartCallListener;,
        Llewa/provider/SensorProviderListener$OnAdjustVolumeListener;,
        Llewa/provider/SensorProviderListener$OnNoMatterHowToTurnListener;,
        Llewa/provider/SensorProviderListener$OnTurnPhoneUpListener;,
        Llewa/provider/SensorProviderListener$OnTurnPhoneDownListener;,
        Llewa/provider/SensorProviderListener$OnProximityListener;,
        Llewa/provider/SensorProviderListener$OnPhoneStaticScreenDownListener;,
        Llewa/provider/SensorProviderListener$OnPhoneStaticScreenUpListener;,
        Llewa/provider/SensorProviderListener$OnShakeAndShakeListener;
    }
.end annotation


# static fields
.field public static final ADJUSTVOLUME_SENSOR:I = 0x8

.field public static final ADJUST_VOLUME_TIME:I = 0x3e8

.field public static final DEFAULT_SHAKE_SPEED:I = 0x11

.field public static final DEFAULT_SMART_CALL_DEGREE:F = 7.0f

.field public static final DEFAULT_SMART_CALL_TIME:I = 0x3e8

.field public static final DEFAULT_TURN_DOWN:F = 5.0f

.field public static final DEFAULT_TURN_DOWN_DEGREE:I = -0x5

.field public static final DEFAULT_TURN_UP:F = -5.0f

.field public static final DEFAULT_TURN_UP_DEGREE:I = 0x5

.field public static final DEGREE_PI:F = 180.0f

.field public static final GRAVITY:F = 10.0f

.field public static final NOMATTERTURN_SENSOR:I = 0x7

.field public static final ONLYPROXIMITY_SENSOR:I = 0xa

.field public static final PROXIMITY_SENSOR:I = 0x4

.field public static final PROXIMITY_THRESHOLD:F = 5.0f

.field public static final SCREENDOWN_SENSOR:I = 0x6

.field public static final SCREENUP_SENSOR:I = 0x5

.field public static final SHAKE_SENSOR:I = 0x1

.field public static final SMARTCALL_SENSOR:I = 0x9

.field public static final TURNDOWN_SENSOR:I = 0x2

.field public static final TURNUP_SENSOR:I = 0x3

.field public static final UPDATE_INTERVAL_TIME:I = 0x3e8

.field public static final UPTATE_INTERVAL_TIME:I = 0x96


# instance fields
.field private mAccelerometerSensor:Landroid/hardware/Sensor;

.field private final mAdjustVolumeEventListener:Landroid/hardware/SensorEventListener;

.field private mAdjustVolumeSensor:Landroid/hardware/Sensor;

.field private mCallDelayTime:I

.field private mCallTime:J

.field private mContext:Landroid/content/Context;

.field private mLastShakeTime:J

.field private mLastTime:J

.field private mLastUpdateTime:J

.field private final mOnlyProximityEventListener:Landroid/hardware/SensorEventListener;

.field private mOrientationSensor:Landroid/hardware/Sensor;

.field private mPhoneScreenDown:Z

.field private final mPhoneScreenDownEventListener:Landroid/hardware/SensorEventListener;

.field private mPhoneScreenUp:Z

.field private final mPhoneScreenUpEventListener:Landroid/hardware/SensorEventListener;

.field private mPhoneStatusDown:Z

.field private mPhoneStatusUp:Z

.field private mProximityActive:Z

.field private final mProximityEventListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mRegisterAdjustVolume:Z

.field private mRegisterNoMatterTurn:Z

.field private mRegisterOnlyPro:Z

.field private mRegisterProxim:Z

.field private mRegisterScreenDown:Z

.field private mRegisterScreenUp:Z

.field private mRegisterShake:Z

.field private mRegisterTurnDown:Z

.field private mRegisterTurnUp:Z

.field private mScreenDown:Z

.field private mScreenUp:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private final mShakeEventListener:Landroid/hardware/SensorEventListener;

.field private mShakeSpeed:F

.field private final mSmartCallEventListener:Landroid/hardware/SensorEventListener;

.field private mTurnDown:Z

.field private mTurnDownValue:F

.field private mTurnPhoneDown:Z

.field private final mTurnPhoneDownEventListener:Landroid/hardware/SensorEventListener;

.field private final mTurnPhoneEventListener:Landroid/hardware/SensorEventListener;

.field private mTurnPhoneUp:Z

.field private final mTurnPhoneUpEventListener:Landroid/hardware/SensorEventListener;

.field private mTurnUp:Z

.field private mTurnUpValue:F

.field private onAdjustVolumeListener:Llewa/provider/SensorProviderListener$OnAdjustVolumeListener;

.field private onNoMatterHowToTurnListener:Llewa/provider/SensorProviderListener$OnNoMatterHowToTurnListener;

.field private onOnlyProximityListener:Llewa/provider/SensorProviderListener$OnOnlyProximityListener;

.field private onPhoneStaticScreenDownListener:Llewa/provider/SensorProviderListener$OnPhoneStaticScreenDownListener;

.field private onPhoneStaticScreenUpListener:Llewa/provider/SensorProviderListener$OnPhoneStaticScreenUpListener;

.field private onProximityListener:Llewa/provider/SensorProviderListener$OnProximityListener;

.field private onShakeAndShakeListener:Llewa/provider/SensorProviderListener$OnShakeAndShakeListener;

.field private onSmartCallListener:Llewa/provider/SensorProviderListener$OnSmartCallListener;

.field private onTurnPhoneDownListener:Llewa/provider/SensorProviderListener$OnTurnPhoneDownListener;

.field private onTurnPhoneUpListener:Llewa/provider/SensorProviderListener$OnTurnPhoneUpListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/16 v2, 0x8

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Llewa/provider/SensorProviderListener;->mLastUpdateTime:J

    .line 111
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Llewa/provider/SensorProviderListener;->mLastTime:J

    .line 112
    const-wide/16 v0, -0x3

    iput-wide v0, p0, Llewa/provider/SensorProviderListener;->mCallTime:J

    .line 138
    new-instance v0, Llewa/provider/SensorProviderListener$1;

    invoke-direct {v0, p0}, Llewa/provider/SensorProviderListener$1;-><init>(Llewa/provider/SensorProviderListener;)V

    iput-object v0, p0, Llewa/provider/SensorProviderListener;->mShakeEventListener:Landroid/hardware/SensorEventListener;

    .line 175
    new-instance v0, Llewa/provider/SensorProviderListener$2;

    invoke-direct {v0, p0}, Llewa/provider/SensorProviderListener$2;-><init>(Llewa/provider/SensorProviderListener;)V

    iput-object v0, p0, Llewa/provider/SensorProviderListener;->mTurnPhoneDownEventListener:Landroid/hardware/SensorEventListener;

    .line 198
    new-instance v0, Llewa/provider/SensorProviderListener$3;

    invoke-direct {v0, p0}, Llewa/provider/SensorProviderListener$3;-><init>(Llewa/provider/SensorProviderListener;)V

    iput-object v0, p0, Llewa/provider/SensorProviderListener;->mTurnPhoneUpEventListener:Landroid/hardware/SensorEventListener;

    .line 221
    new-instance v0, Llewa/provider/SensorProviderListener$4;

    invoke-direct {v0, p0}, Llewa/provider/SensorProviderListener$4;-><init>(Llewa/provider/SensorProviderListener;)V

    iput-object v0, p0, Llewa/provider/SensorProviderListener;->mTurnPhoneEventListener:Landroid/hardware/SensorEventListener;

    .line 257
    new-instance v0, Llewa/provider/SensorProviderListener$5;

    invoke-direct {v0, p0}, Llewa/provider/SensorProviderListener$5;-><init>(Llewa/provider/SensorProviderListener;)V

    iput-object v0, p0, Llewa/provider/SensorProviderListener;->mProximityEventListener:Landroid/hardware/SensorEventListener;

    .line 280
    new-instance v0, Llewa/provider/SensorProviderListener$6;

    invoke-direct {v0, p0}, Llewa/provider/SensorProviderListener$6;-><init>(Llewa/provider/SensorProviderListener;)V

    iput-object v0, p0, Llewa/provider/SensorProviderListener;->mOnlyProximityEventListener:Landroid/hardware/SensorEventListener;

    .line 309
    new-instance v0, Llewa/provider/SensorProviderListener$7;

    invoke-direct {v0, p0}, Llewa/provider/SensorProviderListener$7;-><init>(Llewa/provider/SensorProviderListener;)V

    iput-object v0, p0, Llewa/provider/SensorProviderListener;->mPhoneScreenUpEventListener:Landroid/hardware/SensorEventListener;

    .line 359
    new-instance v0, Llewa/provider/SensorProviderListener$8;

    invoke-direct {v0, p0}, Llewa/provider/SensorProviderListener$8;-><init>(Llewa/provider/SensorProviderListener;)V

    iput-object v0, p0, Llewa/provider/SensorProviderListener;->mPhoneScreenDownEventListener:Landroid/hardware/SensorEventListener;

    .line 410
    new-instance v0, Llewa/provider/SensorProviderListener$9;

    invoke-direct {v0, p0}, Llewa/provider/SensorProviderListener$9;-><init>(Llewa/provider/SensorProviderListener;)V

    iput-object v0, p0, Llewa/provider/SensorProviderListener;->mAdjustVolumeEventListener:Landroid/hardware/SensorEventListener;

    .line 436
    new-instance v0, Llewa/provider/SensorProviderListener$10;

    invoke-direct {v0, p0}, Llewa/provider/SensorProviderListener$10;-><init>(Llewa/provider/SensorProviderListener;)V

    iput-object v0, p0, Llewa/provider/SensorProviderListener;->mSmartCallEventListener:Landroid/hardware/SensorEventListener;

    .line 119
    iput-object p1, p0, Llewa/provider/SensorProviderListener;->mContext:Landroid/content/Context;

    .line 120
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Llewa/provider/SensorProviderListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 121
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Llewa/provider/SensorProviderListener;->mAccelerometerSensor:Landroid/hardware/Sensor;

    .line 122
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Llewa/provider/SensorProviderListener;->mProximitySensor:Landroid/hardware/Sensor;

    .line 123
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Llewa/provider/SensorProviderListener;->mAdjustVolumeSensor:Landroid/hardware/Sensor;

    .line 124
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Llewa/provider/SensorProviderListener;->mOrientationSensor:Landroid/hardware/Sensor;

    .line 125
    const-string v0, "N1T"

    const-string v1, "ro.product.device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {p1}, Llewa/provider/PreferencesSensorProvider;->getShakeDegree(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3e

    int-to-float v0, v0

    iput v0, p0, Llewa/provider/SensorProviderListener;->mShakeSpeed:F

    .line 132
    :goto_0
    invoke-static {p1}, Llewa/provider/PreferencesSensorProvider;->getTurnDownDegree(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Llewa/provider/SensorProviderListener;->mTurnDownValue:F

    .line 133
    invoke-static {p1}, Llewa/provider/PreferencesSensorProvider;->getTurnUpDegree(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Llewa/provider/SensorProviderListener;->mTurnUpValue:F

    .line 134
    invoke-static {p1}, Llewa/provider/PreferencesSensorProvider;->getSmartCallDelayTime(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Llewa/provider/SensorProviderListener;->mCallDelayTime:I

    .line 135
    const-string v0, "SensorProviderListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShakeSpeed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Llewa/provider/SensorProviderListener;->mShakeSpeed:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void

    .line 127
    :cond_0
    const-string v0, "mione_plus"

    const-string v1, "ro.product.device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-static {p1}, Llewa/provider/PreferencesSensorProvider;->getShakeDegree(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x35

    int-to-float v0, v0

    iput v0, p0, Llewa/provider/SensorProviderListener;->mShakeSpeed:F

    goto :goto_0

    .line 130
    :cond_1
    invoke-static {p1}, Llewa/provider/PreferencesSensorProvider;->getShakeDegree(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x6c

    int-to-float v0, v0

    iput v0, p0, Llewa/provider/SensorProviderListener;->mShakeSpeed:F

    goto :goto_0
.end method

.method static synthetic access$000(Llewa/provider/SensorProviderListener;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 44
    iget-wide v0, p0, Llewa/provider/SensorProviderListener;->mLastShakeTime:J

    return-wide v0
.end method

.method static synthetic access$002(Llewa/provider/SensorProviderListener;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-wide p1, p0, Llewa/provider/SensorProviderListener;->mLastShakeTime:J

    return-wide p1
.end method

.method static synthetic access$100(Llewa/provider/SensorProviderListener;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Llewa/provider/SensorProviderListener;->mShakeSpeed:F

    return v0
.end method

.method static synthetic access$1000(Llewa/provider/SensorProviderListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Llewa/provider/SensorProviderListener;->mTurnDown:Z

    return v0
.end method

.method static synthetic access$1002(Llewa/provider/SensorProviderListener;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Llewa/provider/SensorProviderListener;->mTurnDown:Z

    return p1
.end method

.method static synthetic access$1100(Llewa/provider/SensorProviderListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Llewa/provider/SensorProviderListener;->mScreenDown:Z

    return v0
.end method

.method static synthetic access$1102(Llewa/provider/SensorProviderListener;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Llewa/provider/SensorProviderListener;->mScreenDown:Z

    return p1
.end method

.method static synthetic access$1200(Llewa/provider/SensorProviderListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Llewa/provider/SensorProviderListener;->mTurnUp:Z

    return v0
.end method

.method static synthetic access$1202(Llewa/provider/SensorProviderListener;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Llewa/provider/SensorProviderListener;->mTurnUp:Z

    return p1
.end method

.method static synthetic access$1300(Llewa/provider/SensorProviderListener;)Llewa/provider/SensorProviderListener$OnNoMatterHowToTurnListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->onNoMatterHowToTurnListener:Llewa/provider/SensorProviderListener$OnNoMatterHowToTurnListener;

    return-object v0
.end method

.method static synthetic access$1400(Llewa/provider/SensorProviderListener;)Landroid/hardware/Sensor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$1500(Llewa/provider/SensorProviderListener;)Llewa/provider/SensorProviderListener$OnProximityListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->onProximityListener:Llewa/provider/SensorProviderListener$OnProximityListener;

    return-object v0
.end method

.method static synthetic access$1600(Llewa/provider/SensorProviderListener;)Llewa/provider/SensorProviderListener$OnOnlyProximityListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->onOnlyProximityListener:Llewa/provider/SensorProviderListener$OnOnlyProximityListener;

    return-object v0
.end method

.method static synthetic access$1700(Llewa/provider/SensorProviderListener;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 44
    iget-wide v0, p0, Llewa/provider/SensorProviderListener;->mLastUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$1702(Llewa/provider/SensorProviderListener;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-wide p1, p0, Llewa/provider/SensorProviderListener;->mLastUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$1802(Llewa/provider/SensorProviderListener;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Llewa/provider/SensorProviderListener;->mPhoneStatusUp:Z

    return p1
.end method

.method static synthetic access$1900(Llewa/provider/SensorProviderListener;)Llewa/provider/SensorProviderListener$OnPhoneStaticScreenUpListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->onPhoneStaticScreenUpListener:Llewa/provider/SensorProviderListener$OnPhoneStaticScreenUpListener;

    return-object v0
.end method

.method static synthetic access$200(Llewa/provider/SensorProviderListener;)Llewa/provider/SensorProviderListener$OnShakeAndShakeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->onShakeAndShakeListener:Llewa/provider/SensorProviderListener$OnShakeAndShakeListener;

    return-object v0
.end method

.method static synthetic access$2002(Llewa/provider/SensorProviderListener;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Llewa/provider/SensorProviderListener;->mPhoneStatusDown:Z

    return p1
.end method

.method static synthetic access$2100(Llewa/provider/SensorProviderListener;)Llewa/provider/SensorProviderListener$OnPhoneStaticScreenDownListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->onPhoneStaticScreenDownListener:Llewa/provider/SensorProviderListener$OnPhoneStaticScreenDownListener;

    return-object v0
.end method

.method static synthetic access$2200(Llewa/provider/SensorProviderListener;)Landroid/hardware/Sensor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mAdjustVolumeSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$2300(Llewa/provider/SensorProviderListener;)Llewa/provider/SensorProviderListener$OnAdjustVolumeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->onAdjustVolumeListener:Llewa/provider/SensorProviderListener$OnAdjustVolumeListener;

    return-object v0
.end method

.method static synthetic access$2400(Llewa/provider/SensorProviderListener;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 44
    iget-wide v0, p0, Llewa/provider/SensorProviderListener;->mCallTime:J

    return-wide v0
.end method

.method static synthetic access$2402(Llewa/provider/SensorProviderListener;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-wide p1, p0, Llewa/provider/SensorProviderListener;->mCallTime:J

    return-wide p1
.end method

.method static synthetic access$2500(Llewa/provider/SensorProviderListener;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Llewa/provider/SensorProviderListener;->mCallDelayTime:I

    return v0
.end method

.method static synthetic access$2600(Llewa/provider/SensorProviderListener;)Llewa/provider/SensorProviderListener$OnSmartCallListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->onSmartCallListener:Llewa/provider/SensorProviderListener$OnSmartCallListener;

    return-object v0
.end method

.method static synthetic access$300(Llewa/provider/SensorProviderListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Llewa/provider/SensorProviderListener;->mPhoneScreenUp:Z

    return v0
.end method

.method static synthetic access$302(Llewa/provider/SensorProviderListener;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Llewa/provider/SensorProviderListener;->mPhoneScreenUp:Z

    return p1
.end method

.method static synthetic access$400(Llewa/provider/SensorProviderListener;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Llewa/provider/SensorProviderListener;->mTurnDownValue:F

    return v0
.end method

.method static synthetic access$500(Llewa/provider/SensorProviderListener;)Llewa/provider/SensorProviderListener$OnTurnPhoneDownListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->onTurnPhoneDownListener:Llewa/provider/SensorProviderListener$OnTurnPhoneDownListener;

    return-object v0
.end method

.method static synthetic access$600(Llewa/provider/SensorProviderListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Llewa/provider/SensorProviderListener;->mPhoneScreenDown:Z

    return v0
.end method

.method static synthetic access$602(Llewa/provider/SensorProviderListener;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Llewa/provider/SensorProviderListener;->mPhoneScreenDown:Z

    return p1
.end method

.method static synthetic access$700(Llewa/provider/SensorProviderListener;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Llewa/provider/SensorProviderListener;->mTurnUpValue:F

    return v0
.end method

.method static synthetic access$800(Llewa/provider/SensorProviderListener;)Llewa/provider/SensorProviderListener$OnTurnPhoneUpListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->onTurnPhoneUpListener:Llewa/provider/SensorProviderListener$OnTurnPhoneUpListener;

    return-object v0
.end method

.method static synthetic access$900(Llewa/provider/SensorProviderListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Llewa/provider/SensorProviderListener;->mScreenUp:Z

    return v0
.end method

.method static synthetic access$902(Llewa/provider/SensorProviderListener;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Llewa/provider/SensorProviderListener;->mScreenUp:Z

    return p1
.end method


# virtual methods
.method public registerSensorEventerListener(I)V
    .locals 4
    .parameter "type"

    .prologue
    const/4 v3, 0x3

    .line 479
    packed-switch p1, :pswitch_data_0

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 481
    :pswitch_0
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mAccelerometerSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Llewa/provider/SensorProviderListener;->mShakeEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Llewa/provider/SensorProviderListener;->mAccelerometerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Llewa/provider/SensorProviderListener;->mRegisterShake:Z

    goto :goto_0

    .line 488
    :pswitch_1
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mAccelerometerSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Llewa/provider/SensorProviderListener;->mTurnPhoneDownEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Llewa/provider/SensorProviderListener;->mAccelerometerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Llewa/provider/SensorProviderListener;->mRegisterTurnDown:Z

    goto :goto_0

    .line 495
    :pswitch_2
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mAccelerometerSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Llewa/provider/SensorProviderListener;->mTurnPhoneUpEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Llewa/provider/SensorProviderListener;->mAccelerometerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Llewa/provider/SensorProviderListener;->mRegisterTurnUp:Z

    goto :goto_0

    .line 502
    :pswitch_3
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Llewa/provider/SensorProviderListener;->mProximityEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Llewa/provider/SensorProviderListener;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Llewa/provider/SensorProviderListener;->mRegisterProxim:Z

    goto :goto_0

    .line 509
    :pswitch_4
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mAccelerometerSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mOrientationSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Llewa/provider/SensorProviderListener;->mPhoneScreenUpEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Llewa/provider/SensorProviderListener;->mOrientationSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Llewa/provider/SensorProviderListener;->mRegisterScreenUp:Z

    .line 512
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Llewa/provider/SensorProviderListener;->mPhoneScreenUpEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Llewa/provider/SensorProviderListener;->mAccelerometerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 517
    :pswitch_5
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mAccelerometerSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mOrientationSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Llewa/provider/SensorProviderListener;->mPhoneScreenDownEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Llewa/provider/SensorProviderListener;->mOrientationSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Llewa/provider/SensorProviderListener;->mRegisterScreenDown:Z

    .line 520
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Llewa/provider/SensorProviderListener;->mPhoneScreenDownEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Llewa/provider/SensorProviderListener;->mAccelerometerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 525
    :pswitch_6
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mAccelerometerSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Llewa/provider/SensorProviderListener;->mTurnPhoneEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Llewa/provider/SensorProviderListener;->mAccelerometerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Llewa/provider/SensorProviderListener;->mRegisterNoMatterTurn:Z

    goto/16 :goto_0

    .line 532
    :pswitch_7
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mAdjustVolumeSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Llewa/provider/SensorProviderListener;->mAdjustVolumeEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Llewa/provider/SensorProviderListener;->mAdjustVolumeSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Llewa/provider/SensorProviderListener;->mRegisterAdjustVolume:Z

    goto/16 :goto_0

    .line 538
    :pswitch_8
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mAccelerometerSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Llewa/provider/SensorProviderListener;->mSmartCallEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Llewa/provider/SensorProviderListener;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 541
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Llewa/provider/SensorProviderListener;->mSmartCallEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Llewa/provider/SensorProviderListener;->mAccelerometerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto/16 :goto_0

    .line 546
    :pswitch_9
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Llewa/provider/SensorProviderListener;->mOnlyProximityEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Llewa/provider/SensorProviderListener;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Llewa/provider/SensorProviderListener;->mRegisterOnlyPro:Z

    goto/16 :goto_0

    .line 479
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public setOnAdjustVolumeListener(Llewa/provider/SensorProviderListener$OnAdjustVolumeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 692
    iput-object p1, p0, Llewa/provider/SensorProviderListener;->onAdjustVolumeListener:Llewa/provider/SensorProviderListener$OnAdjustVolumeListener;

    .line 693
    return-void
.end method

.method public setOnNoMatterHowToTurnListener(Llewa/provider/SensorProviderListener$OnNoMatterHowToTurnListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 681
    iput-object p1, p0, Llewa/provider/SensorProviderListener;->onNoMatterHowToTurnListener:Llewa/provider/SensorProviderListener$OnNoMatterHowToTurnListener;

    .line 682
    return-void
.end method

.method public setOnOnlyProximityListener(Llewa/provider/SensorProviderListener$OnOnlyProximityListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 712
    iput-object p1, p0, Llewa/provider/SensorProviderListener;->onOnlyProximityListener:Llewa/provider/SensorProviderListener$OnOnlyProximityListener;

    .line 713
    return-void
.end method

.method public setOnPhoneScreenListener(Llewa/provider/SensorProviderListener$OnPhoneStaticScreenDownListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 633
    iput-object p1, p0, Llewa/provider/SensorProviderListener;->onPhoneStaticScreenDownListener:Llewa/provider/SensorProviderListener$OnPhoneStaticScreenDownListener;

    .line 634
    return-void
.end method

.method public setOnPhoneStatusListener(Llewa/provider/SensorProviderListener$OnPhoneStaticScreenUpListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 620
    iput-object p1, p0, Llewa/provider/SensorProviderListener;->onPhoneStaticScreenUpListener:Llewa/provider/SensorProviderListener$OnPhoneStaticScreenUpListener;

    .line 621
    return-void
.end method

.method public setOnProximityListener(Llewa/provider/SensorProviderListener$OnProximityListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 645
    iput-object p1, p0, Llewa/provider/SensorProviderListener;->onProximityListener:Llewa/provider/SensorProviderListener$OnProximityListener;

    .line 646
    return-void
.end method

.method public setOnShakeListener(Llewa/provider/SensorProviderListener$OnShakeAndShakeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 608
    iput-object p1, p0, Llewa/provider/SensorProviderListener;->onShakeAndShakeListener:Llewa/provider/SensorProviderListener$OnShakeAndShakeListener;

    .line 609
    return-void
.end method

.method public setOnSmartCallListener(Llewa/provider/SensorProviderListener$OnSmartCallListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 702
    iput-object p1, p0, Llewa/provider/SensorProviderListener;->onSmartCallListener:Llewa/provider/SensorProviderListener$OnSmartCallListener;

    .line 703
    return-void
.end method

.method public setOnTurnPhoneDownListener(Llewa/provider/SensorProviderListener$OnTurnPhoneDownListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 657
    iput-object p1, p0, Llewa/provider/SensorProviderListener;->onTurnPhoneDownListener:Llewa/provider/SensorProviderListener$OnTurnPhoneDownListener;

    .line 658
    return-void
.end method

.method public setOnTurnPhoneUpListener(Llewa/provider/SensorProviderListener$OnTurnPhoneUpListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 669
    iput-object p1, p0, Llewa/provider/SensorProviderListener;->onTurnPhoneUpListener:Llewa/provider/SensorProviderListener$OnTurnPhoneUpListener;

    .line 670
    return-void
.end method

.method public unregisterSensorEventerListener(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 559
    packed-switch p1, :pswitch_data_0

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 561
    :pswitch_0
    iget-boolean v0, p0, Llewa/provider/SensorProviderListener;->mRegisterShake:Z

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Llewa/provider/SensorProviderListener;->mShakeEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 565
    :pswitch_1
    iget-boolean v0, p0, Llewa/provider/SensorProviderListener;->mRegisterTurnDown:Z

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Llewa/provider/SensorProviderListener;->mTurnPhoneDownEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 569
    :pswitch_2
    iget-boolean v0, p0, Llewa/provider/SensorProviderListener;->mRegisterTurnUp:Z

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Llewa/provider/SensorProviderListener;->mTurnPhoneUpEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 573
    :pswitch_3
    iget-boolean v0, p0, Llewa/provider/SensorProviderListener;->mRegisterProxim:Z

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Llewa/provider/SensorProviderListener;->mProximityEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 577
    :pswitch_4
    iget-boolean v0, p0, Llewa/provider/SensorProviderListener;->mRegisterScreenUp:Z

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Llewa/provider/SensorProviderListener;->mPhoneScreenUpEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 581
    :pswitch_5
    iget-boolean v0, p0, Llewa/provider/SensorProviderListener;->mRegisterScreenDown:Z

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Llewa/provider/SensorProviderListener;->mPhoneScreenDownEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 585
    :pswitch_6
    iget-boolean v0, p0, Llewa/provider/SensorProviderListener;->mRegisterNoMatterTurn:Z

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Llewa/provider/SensorProviderListener;->mTurnPhoneEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 589
    :pswitch_7
    iget-boolean v0, p0, Llewa/provider/SensorProviderListener;->mRegisterAdjustVolume:Z

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Llewa/provider/SensorProviderListener;->mAdjustVolumeEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 593
    :pswitch_8
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Llewa/provider/SensorProviderListener;->mSmartCallEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 596
    :pswitch_9
    iget-boolean v0, p0, Llewa/provider/SensorProviderListener;->mRegisterOnlyPro:Z

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Llewa/provider/SensorProviderListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Llewa/provider/SensorProviderListener;->mOnlyProximityEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 559
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
