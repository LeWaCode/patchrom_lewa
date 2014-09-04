.class public Llewa/lockscreen/view/BaseAnimation$AnimationItem;
.super Ljava/lang/Object;
.source "BaseAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/lockscreen/view/BaseAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimationItem"
.end annotation


# instance fields
.field private expression:Llewa/lockscreen/view/Expression;

.field private mAttrs:[Ljava/lang/String;

.field public mTime:J

.field final synthetic this$0:Llewa/lockscreen/view/BaseAnimation;


# direct methods
.method public constructor <init>(Llewa/lockscreen/view/BaseAnimation;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "attrs"

    .prologue
    .line 154
    iput-object p1, p0, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->this$0:Llewa/lockscreen/view/BaseAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p2, p0, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    .line 156
    new-instance v0, Llewa/lockscreen/view/Expression;

    invoke-direct {v0}, Llewa/lockscreen/view/Expression;-><init>()V

    iput-object v0, p0, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->expression:Llewa/lockscreen/view/Expression;

    .line 157
    return-void
.end method


# virtual methods
.method public get(I)I
    .locals 6
    .parameter "index"

    .prologue
    .line 165
    const/4 v1, 0x0

    .line 167
    .local v1, value:I
    if-gez p1, :cond_1

    .line 168
    const-string v2, "BaseAnimation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to get number in AnimationItem:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v1, 0x0

    .line 177
    :cond_0
    :goto_0
    return v1

    .line 171
    :cond_1
    iget-object v2, p0, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    array-length v0, v2

    .line 172
    .local v0, length:I
    if-ge p1, v0, :cond_0

    iget-object v2, p0, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 174
    iget-object v2, p0, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->expression:Llewa/lockscreen/view/Expression;

    iget-object v3, p0, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    aget-object v3, v3, p1

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Llewa/lockscreen/view/Expression;->getDou(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public load(Lorg/w3c/dom/Element;)Llewa/lockscreen/view/BaseAnimation$AnimationItem;
    .locals 6
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 186
    :try_start_0
    const-string v4, "time"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->mTime:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    iget-object v4, p0, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 193
    iget-object v4, p0, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    array-length v3, v4

    .line 194
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 195
    iget-object v4, p0, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, expValue:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 197
    iget-object v4, p0, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->expression:Llewa/lockscreen/view/Expression;

    iget-object v5, p0, Llewa/lockscreen/view/BaseAnimation$AnimationItem;->mAttrs:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5, v1}, Llewa/lockscreen/view/Expression;->putDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v1           #expValue:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #length:I
    :catch_0
    move-exception v0

    .line 188
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "BaseAnimation"

    const-string v5, "fail to get time attribute"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v4, Llewa/lockscreen/view/DomParseException;

    const-string v5, "fail to get time attribute"

    invoke-direct {v4, v5}, Llewa/lockscreen/view/DomParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 203
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_1
    return-object p0
.end method
