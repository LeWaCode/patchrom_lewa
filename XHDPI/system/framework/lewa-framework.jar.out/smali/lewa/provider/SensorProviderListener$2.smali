.class Llewa/provider/SensorProviderListener$2;
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
    .line 175
    iput-object p1, p0, Llewa/provider/SensorProviderListener$2;->this$0:Llewa/provider/SensorProviderListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 180
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 185
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 186
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    const/high16 v1, 0x40a0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 187
    iget-object v0, p0, Llewa/provider/SensorProviderListener$2;->this$0:Llewa/provider/SensorProviderListener;

    #setter for: Llewa/provider/SensorProviderListener;->mPhoneScreenUp:Z
    invoke-static {v0, v2}, Llewa/provider/SensorProviderListener;->access$302(Llewa/provider/SensorProviderListener;Z)Z

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Llewa/provider/SensorProviderListener$2;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->mPhoneScreenUp:Z
    invoke-static {v0}, Llewa/provider/SensorProviderListener;->access$300(Llewa/provider/SensorProviderListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    iget-object v1, p0, Llewa/provider/SensorProviderListener$2;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->mTurnDownValue:F
    invoke-static {v1}, Llewa/provider/SensorProviderListener;->access$400(Llewa/provider/SensorProviderListener;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 190
    iget-object v0, p0, Llewa/provider/SensorProviderListener$2;->this$0:Llewa/provider/SensorProviderListener;

    const/4 v1, 0x0

    #setter for: Llewa/provider/SensorProviderListener;->mPhoneScreenUp:Z
    invoke-static {v0, v1}, Llewa/provider/SensorProviderListener;->access$302(Llewa/provider/SensorProviderListener;Z)Z

    .line 191
    iget-object v0, p0, Llewa/provider/SensorProviderListener$2;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->onTurnPhoneDownListener:Llewa/provider/SensorProviderListener$OnTurnPhoneDownListener;
    invoke-static {v0}, Llewa/provider/SensorProviderListener;->access$500(Llewa/provider/SensorProviderListener;)Llewa/provider/SensorProviderListener$OnTurnPhoneDownListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Llewa/provider/SensorProviderListener$2;->this$0:Llewa/provider/SensorProviderListener;

    #getter for: Llewa/provider/SensorProviderListener;->onTurnPhoneDownListener:Llewa/provider/SensorProviderListener$OnTurnPhoneDownListener;
    invoke-static {v0}, Llewa/provider/SensorProviderListener;->access$500(Llewa/provider/SensorProviderListener;)Llewa/provider/SensorProviderListener$OnTurnPhoneDownListener;

    move-result-object v0

    invoke-interface {v0}, Llewa/provider/SensorProviderListener$OnTurnPhoneDownListener;->onTurnPhoneDown()V

    goto :goto_0
.end method
