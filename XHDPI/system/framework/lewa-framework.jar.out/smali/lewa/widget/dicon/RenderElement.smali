.class public Llewa/widget/dicon/RenderElement;
.super Ljava/lang/Object;
.source "RenderElement.java"


# static fields
.field public static final ALIGN_BOTTOM:I = 0x2

.field public static final ALIGN_H_CENTER:I = 0x2

.field public static final ALIGN_H_LEFT:I = 0x1

.field public static final ALIGN_H_RIGHT:I = 0x3

.field public static final ALIGN_TOP:I = 0x0

.field public static final ALIGN_V_BOTTOM:I = 0x3

.field public static final ALIGN_V_CENTER:I = 0x2

.field public static final ALIGN_V_TOP:I = 0x1

.field public static final TYPE_BUTTON:I = 0x4

.field public static final TYPE_IMAGE:I = 0x1

.field public static final TYPE_MASK:I = 0x3

.field public static final TYPE_PIC_TEXT:I = 0x5

.field public static final TYPE_TEXT:I = 0x2


# instance fields
.field public alignH:I

.field public alignV:I

.field public alpha:Llewa/widget/dicon/ValInt;

.field public angle:Llewa/widget/dicon/ValInt;

.field public background:Llewa/widget/dicon/ValString;

.field public centerX:I

.field public centerY:I

.field public color:Llewa/widget/dicon/ValInt;

.field public font:Ljava/lang/String;

.field public format:Ljava/lang/String;

.field public h:I

.field public id:Ljava/lang/String;

.field public intent:Llewa/widget/dicon/ValString;

.field public layer:I

.field public scale:Llewa/widget/dicon/ValInt;

.field public src:Llewa/widget/dicon/ValString;

.field public srcIndex:Llewa/widget/dicon/ValInt;

.field public textSize:F

.field public type:I

.field public visibility:Llewa/widget/dicon/ValBool;

.field public w:I

.field public x:Llewa/widget/dicon/ValInt;

.field public y:Llewa/widget/dicon/ValInt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Elemnt: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "x["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llewa/widget/dicon/RenderElement;->x:Llewa/widget/dicon/ValInt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], y["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llewa/widget/dicon/RenderElement;->y:Llewa/widget/dicon/ValInt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], w["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llewa/widget/dicon/RenderElement;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], h["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llewa/widget/dicon/RenderElement;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], index["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llewa/widget/dicon/RenderElement;->layer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], type["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llewa/widget/dicon/RenderElement;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], src["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llewa/widget/dicon/RenderElement;->src:Llewa/widget/dicon/ValString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], id["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llewa/widget/dicon/RenderElement;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], intent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llewa/widget/dicon/RenderElement;->intent:Llewa/widget/dicon/ValString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
