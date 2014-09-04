.class public Llewa/laml/data/SensorBinder;
.super Llewa/laml/data/VariableBinder;
.source "SensorBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/data/SensorBinder$Variable;
    }
.end annotation


# static fields
.field private static final DEFAULT_DELAY:I = 0x3040

.field private static final LOG_TAG:Ljava/lang/String; = "SensorBinder"

.field private static final SENSOR_TYPES:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG_NAME:Ljava/lang/String; = "SensorBinder"

.field private static mSensorManager:Landroid/hardware/SensorManager;


# instance fields
.field private mRate:I

.field private mRegistered:Z

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mType:Ljava/lang/String;

.field private mVariables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Llewa/laml/data/SensorBinder$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 48
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Llewa/laml/data/SensorBinder;->SENSOR_TYPES:Ljava/util/HashMap;

    .line 49
    const-class v5, Landroid/hardware/Sensor;

    invoke-virtual {v5}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 50
    .local v1, field:Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, name:Ljava/lang/String;
    const-string v5, "TYPE_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 53
    const/4 v5, 0x5

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 54
    sget-object v5, Llewa/laml/data/SensorBinder;->SENSOR_TYPES:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    return-void

    .line 55
    .restart local v1       #field:Ljava/lang/reflect/Field;
    .restart local v4       #name:Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 3
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p2}, Llewa/laml/data/VariableBinder;-><init>(Llewa/laml/ScreenElementRoot;)V

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Llewa/laml/data/SensorBinder;->mVariables:Landroid/util/SparseArray;

    .line 63
    const-string v0, "type"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/data/SensorBinder;->mType:Ljava/lang/String;

    .line 64
    const-string v0, "rate"

    const/16 v1, 0x3040

    invoke-static {p1, v0, v1}, Llewa/laml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Llewa/laml/data/SensorBinder;->mRate:I

    .line 65
    sget-object v0, Llewa/laml/data/SensorBinder;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Llewa/laml/data/SensorBinder;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sput-object v0, Llewa/laml/data/SensorBinder;->mSensorManager:Landroid/hardware/SensorManager;

    .line 68
    :cond_0
    sget-object v0, Llewa/laml/data/SensorBinder;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Llewa/laml/data/SensorBinder;->mType:Ljava/lang/String;

    invoke-direct {p0, v1}, Llewa/laml/data/SensorBinder;->getSensorType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/data/SensorBinder;->mSensor:Landroid/hardware/Sensor;

    .line 69
    iget-object v0, p0, Llewa/laml/data/SensorBinder;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 70
    const-string v0, "SensorBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to get sensor! TYPE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llewa/laml/data/SensorBinder;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_0
    return-void

    .line 72
    :cond_1
    new-instance v0, Llewa/laml/data/SensorBinder$1;

    invoke-direct {v0, p0}, Llewa/laml/data/SensorBinder$1;-><init>(Llewa/laml/data/SensorBinder;)V

    iput-object v0, p0, Llewa/laml/data/SensorBinder;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 88
    invoke-direct {p0, p1}, Llewa/laml/data/SensorBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    goto :goto_0
.end method

.method static synthetic access$000(Llewa/laml/data/SensorBinder;I)Llewa/laml/data/SensorBinder$Variable;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Llewa/laml/data/SensorBinder;->getVariable(I)Llewa/laml/data/SensorBinder$Variable;

    move-result-object v0

    return-object v0
.end method

.method private getSensorType(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 93
    sget-object v1, Llewa/laml/data/SensorBinder;->SENSOR_TYPES:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 94
    .local v0, type:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private getVariable(I)Llewa/laml/data/SensorBinder$Variable;
    .locals 1
    .parameter "index"

    .prologue
    .line 98
    iget-object v0, p0, Llewa/laml/data/SensorBinder;->mVariables:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/data/SensorBinder$Variable;

    return-object v0
.end method

.method private loadVariables(Lorg/w3c/dom/Element;)V
    .locals 5
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 102
    const-string v3, "Variable"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 103
    .local v2, variables:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 104
    new-instance v1, Llewa/laml/data/SensorBinder$Variable;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Llewa/laml/data/SensorBinder;->getContext()Llewa/laml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v1, v3, v4}, Llewa/laml/data/SensorBinder$Variable;-><init>(Lorg/w3c/dom/Element;Llewa/laml/data/Variables;)V

    .line 105
    .local v1, v:Llewa/laml/data/SensorBinder$Variable;
    iget-object v3, p0, Llewa/laml/data/SensorBinder;->mVariables:Landroid/util/SparseArray;

    iget v4, v1, Llewa/laml/data/SensorBinder$Variable;->mIndex:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    .end local v1           #v:Llewa/laml/data/SensorBinder$Variable;
    :cond_0
    return-void
.end method

.method private registerListener()V
    .locals 4

    .prologue
    .line 111
    iget-boolean v0, p0, Llewa/laml/data/SensorBinder;->mRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Llewa/laml/data/SensorBinder;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Llewa/laml/data/SensorBinder;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Llewa/laml/data/SensorBinder;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Llewa/laml/data/SensorBinder;->mSensor:Landroid/hardware/Sensor;

    iget v3, p0, Llewa/laml/data/SensorBinder;->mRate:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/laml/data/SensorBinder;->mRegistered:Z

    .line 115
    :cond_0
    return-void
.end method

.method private unregisterListener()V
    .locals 3

    .prologue
    .line 118
    iget-boolean v0, p0, Llewa/laml/data/SensorBinder;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/laml/data/SensorBinder;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Llewa/laml/data/SensorBinder;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Llewa/laml/data/SensorBinder;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Llewa/laml/data/SensorBinder;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/laml/data/SensorBinder;->mRegistered:Z

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Llewa/laml/data/SensorBinder;->unregisterListener()V

    .line 126
    invoke-super {p0}, Llewa/laml/data/VariableBinder;->finish()V

    .line 127
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Llewa/laml/data/VariableBinder;->init()V

    .line 131
    invoke-direct {p0}, Llewa/laml/data/SensorBinder;->registerListener()V

    .line 132
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0}, Llewa/laml/data/VariableBinder;->pause()V

    .line 136
    invoke-direct {p0}, Llewa/laml/data/SensorBinder;->unregisterListener()V

    .line 137
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 140
    invoke-super {p0}, Llewa/laml/data/VariableBinder;->resume()V

    .line 141
    invoke-direct {p0}, Llewa/laml/data/SensorBinder;->registerListener()V

    .line 142
    return-void
.end method
