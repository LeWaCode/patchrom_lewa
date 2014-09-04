.class Llewa/provider/SensorProviderListener$3;
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
    .line 198
    iput-object p1, p0, Llewa/provider/SensorProviderListener$3;->this$0:Llewa/provider/SensorProviderListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 203
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 208
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 209
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    const/high16 v1, -0x3f60

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 210
    iget-object v0, p0, Llewa/provider/SensorProviderListener$3;->this$0:Llewa/provider/SensorProviderListener;

    #setter for: Llewa/provider/SensorProviderListener;->mPhoneScreenDown:Z
    invoke-static {v0, v2}, Llewa/provider/SensorProviderListener;->access$602(Llewa/provider/SensorProviderListener;Z)Z

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Llewa/provider/SensorProviderListener$3;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->mPhoneScreenDown:Z
    invoke-static {v0}, Llewa/provider/SensorProviderListener;->access$600(Llewa/provider/SensorProviderListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    iget-object v1, p0, Llewa/provider/SensorProviderListener$3;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->mTurnUpValue:F
    invoke-static {v1}, Llewa/provider/SensorProviderListener;->access$700(Llewa/provider/SensorProviderListener;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 213
    iget-object v0, p0, Llewa/provider/SensorProviderListener$3;->this$0:Llewa/provider/SensorProviderListener;

    const/4 v1, 0x0

    #setter for: Llewa/provider/SensorProviderListener;->mPhoneScreenDown:Z
    invoke-static {v0, v1}, Llewa/provider/SensorProviderListener;->access$602(Llewa/provider/SensorProviderListener;Z)Z

    .line 214
    iget-object v0, p0, Llewa/provider/SensorProviderListener$3;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->onTurnPhoneUpListener:Llewa/provider/SensorProviderListener$OnTurnPhoneUpListener;
    invoke-static {v0}, Llewa/provider/SensorProviderListener;->access$800(Llewa/provider/SensorProviderListener;)Llewa/provider/SensorProviderListener$OnTurnPhoneUpListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Llewa/provider/SensorProviderListener$3;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->onTurnPhoneUpListener:Llewa/provider/SensorProviderListener$OnTurnPhoneUpListener;
    invoke-static {v0}, Llewa/provider/SensorProviderListener;->access$800(Llewa/provider/SensorProviderListener;)Llewa/provider/SensorProviderListener$OnTurnPhoneUpListener;

    move-result-object v0

    invoke-interface {v0}, Llewa/provider/SensorProviderListener$OnTurnPhoneUpListener;->onTurnPhoneUp()V

    goto :goto_0
.end method
