.class Llewa/laml/data/SensorBinder$1;
.super Ljava/lang/Object;
.source "SensorBinder.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llewa/laml/data/SensorBinder;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/laml/data/SensorBinder;


# direct methods
.method constructor <init>(Llewa/laml/data/SensorBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Llewa/laml/data/SensorBinder$1;->this$0:Llewa/laml/data/SensorBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "i"

    .prologue
    .line 86
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 75
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 76
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v3, v1

    .line 77
    .local v0, data:F
    iget-object v3, p0, Llewa/laml/data/SensorBinder$1;->this$0:Llewa/laml/data/SensorBinder;

    #calls: Llewa/laml/data/SensorBinder;->getVariable(I)Llewa/laml/data/SensorBinder$Variable;
    invoke-static {v3, v1}, Llewa/laml/data/SensorBinder;->access$000(Llewa/laml/data/SensorBinder;I)Llewa/laml/data/SensorBinder$Variable;

    move-result-object v2

    .line 78
    .local v2, var:Llewa/laml/data/SensorBinder$Variable;
    if-eqz v2, :cond_0

    .line 79
    float-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Llewa/laml/data/SensorBinder$Variable;->setValue(D)V

    .line 75
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v0           #data:F
    .end local v2           #var:Llewa/laml/data/SensorBinder$Variable;
    :cond_1
    iget-object v3, p0, Llewa/laml/data/SensorBinder$1;->this$0:Llewa/laml/data/SensorBinder;

    invoke-virtual {v3}, Llewa/laml/data/SensorBinder;->getContext()Llewa/laml/ScreenContext;

    move-result-object v3

    invoke-virtual {v3}, Llewa/laml/ScreenContext;->requestUpdate()V

    .line 83
    return-void
.end method
