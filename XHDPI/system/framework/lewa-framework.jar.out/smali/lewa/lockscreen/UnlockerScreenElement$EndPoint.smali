.class Llewa/lockscreen/UnlockerScreenElement$EndPoint;
.super Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;
.source "UnlockerScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/lockscreen/UnlockerScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndPoint"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "EndPoint"


# instance fields
.field private mPath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/lockscreen/UnlockerScreenElement$Position;",
            ">;"
        }
    .end annotation
.end field

.field private mPathX:Ljava/lang/String;

.field private mPathY:Ljava/lang/String;

.field public mTask:Llewa/lockscreen/UnlockerScreenElement$Task;

.field private mTolerance:I

.field private mUnlockedPath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/lockscreen/UnlockerScreenElement$Position;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Llewa/lockscreen/UnlockerScreenElement;


# direct methods
.method public constructor <init>(Llewa/lockscreen/UnlockerScreenElement;Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 159
    iput-object p1, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    .line 160
    const-string v0, "EndPoint"

    invoke-direct {p0, p1, p2, v0}, Llewa/lockscreen/UnlockerScreenElement$UnlockPoint;-><init>(Llewa/lockscreen/UnlockerScreenElement;Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 161
    const/16 v0, 0x96

    iput v0, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mTolerance:I

    .line 162
    invoke-direct {p0, p2}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->load(Lorg/w3c/dom/Element;)V

    .line 163
    return-void
.end method

.method static synthetic access$3000(Llewa/lockscreen/UnlockerScreenElement$EndPoint;II)Llewa/lockscreen/view/Utils$Point;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->getNearestPoint(II)Llewa/lockscreen/view/Utils$Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Llewa/lockscreen/UnlockerScreenElement$EndPoint;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mUnlockedPath:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3202(Llewa/lockscreen/UnlockerScreenElement$EndPoint;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput-object p1, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mUnlockedPath:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3300(Llewa/lockscreen/UnlockerScreenElement$EndPoint;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mPath:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getNearestPoint(II)Llewa/lockscreen/view/Utils$Point;
    .locals 29
    .parameter "x"
    .parameter "y"

    .prologue
    .line 229
    const/16 v17, 0x0

    .line 231
    .local v17, point:Llewa/lockscreen/view/Utils$Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mPath:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    if-nez v25, :cond_1

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    move-object/from16 v25, v0

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->mTouchOffsetX:I
    invoke-static/range {v25 .. v25}, Llewa/lockscreen/UnlockerScreenElement;->access$500(Llewa/lockscreen/UnlockerScreenElement;)I

    move-result v25

    sub-int v25, p1, v25

    move/from16 v0, v25

    int-to-double v10, v0

    .line 233
    .local v10, dx:D
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    move-object/from16 v25, v0

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->mTouchOffsetY:I
    invoke-static/range {v25 .. v25}, Llewa/lockscreen/UnlockerScreenElement;->access$600(Llewa/lockscreen/UnlockerScreenElement;)I

    move-result v25

    sub-int v25, p2, v25

    move/from16 v0, v25

    int-to-double v12, v0

    .line 234
    .local v12, dy:D
    new-instance v17, Llewa/lockscreen/view/Utils$Point;

    .end local v17           #point:Llewa/lockscreen/view/Utils$Point;
    move-object/from16 v0, v17

    invoke-direct {v0, v10, v11, v12, v13}, Llewa/lockscreen/view/Utils$Point;-><init>(DD)V

    .end local v10           #dx:D
    .end local v12           #dy:D
    .restart local v17       #point:Llewa/lockscreen/view/Utils$Point;
    :cond_0
    :goto_0
    move-object/from16 v25, v17

    .line 265
    :goto_1
    return-object v25

    .line 237
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mPath:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 238
    .local v24, size:I
    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-gt v0, v1, :cond_2

    .line 239
    const/16 v25, 0x0

    goto :goto_1

    .line 241
    :cond_2
    const-wide v6, 0x7fefffffffffffffL

    .line 242
    .local v6, d2:D
    const/4 v5, 0x1

    .line 244
    .local v5, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    move-object/from16 v25, v0

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->mTouchOffsetX:I
    invoke-static/range {v25 .. v25}, Llewa/lockscreen/UnlockerScreenElement;->access$500(Llewa/lockscreen/UnlockerScreenElement;)I

    move-result v25

    sub-int v15, p1, v25

    .line 245
    .local v15, offSetX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    move-object/from16 v25, v0

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->mTouchOffsetY:I
    invoke-static/range {v25 .. v25}, Llewa/lockscreen/UnlockerScreenElement;->access$600(Llewa/lockscreen/UnlockerScreenElement;)I

    move-result v25

    sub-int v16, p2, v25

    .line 246
    .local v16, offSetY:I
    add-int/lit8 v14, v5, -0x1

    .line 247
    .local v14, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mPath:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Llewa/lockscreen/UnlockerScreenElement$Position;

    .line 248
    .local v22, position1:Llewa/lockscreen/UnlockerScreenElement$Position;
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mPath:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Llewa/lockscreen/UnlockerScreenElement$Position;

    .line 252
    .local v23, position2:Llewa/lockscreen/UnlockerScreenElement$Position;
    new-instance v18, Llewa/lockscreen/view/Utils$Point;

    invoke-virtual/range {v22 .. v22}, Llewa/lockscreen/UnlockerScreenElement$Position;->getX()I

    move-result v25

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    invoke-virtual/range {v22 .. v22}, Llewa/lockscreen/UnlockerScreenElement$Position;->getY()I

    move-result v27

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v25

    move-wide/from16 v3, v27

    invoke-direct {v0, v1, v2, v3, v4}, Llewa/lockscreen/view/Utils$Point;-><init>(DD)V

    .line 253
    .local v18, point1:Llewa/lockscreen/view/Utils$Point;
    new-instance v19, Llewa/lockscreen/view/Utils$Point;

    invoke-virtual/range {v23 .. v23}, Llewa/lockscreen/UnlockerScreenElement$Position;->getX()I

    move-result v25

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    invoke-virtual/range {v23 .. v23}, Llewa/lockscreen/UnlockerScreenElement$Position;->getY()I

    move-result v27

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v25

    move-wide/from16 v3, v27

    invoke-direct {v0, v1, v2, v3, v4}, Llewa/lockscreen/view/Utils$Point;-><init>(DD)V

    .line 255
    .local v19, point2:Llewa/lockscreen/view/Utils$Point;
    new-instance v20, Llewa/lockscreen/view/Utils$Point;

    int-to-double v0, v15

    move-wide/from16 v25, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v25

    move-wide/from16 v3, v27

    invoke-direct {v0, v1, v2, v3, v4}, Llewa/lockscreen/view/Utils$Point;-><init>(DD)V

    .line 257
    .local v20, point3:Llewa/lockscreen/view/Utils$Point;
    const/16 v25, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Llewa/lockscreen/view/Utils;->pointProjectionOnSegment(Llewa/lockscreen/view/Utils$Point;Llewa/lockscreen/view/Utils$Point;Llewa/lockscreen/view/Utils$Point;Z)Llewa/lockscreen/view/Utils$Point;

    move-result-object v21

    .line 258
    .local v21, point4:Llewa/lockscreen/view/Utils$Point;
    const/16 v25, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Llewa/lockscreen/view/Utils;->Dist(Llewa/lockscreen/view/Utils$Point;Llewa/lockscreen/view/Utils$Point;Z)D

    move-result-wide v8

    .line 259
    .local v8, dou:D
    cmpg-double v25, v8, v6

    if-gez v25, :cond_0

    .line 260
    move-wide v6, v8

    .line 261
    move-object/from16 v17, v21

    goto/16 :goto_0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-direct {p0, p1}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->loadTask(Lorg/w3c/dom/Element;)V

    .line 167
    invoke-direct {p0, p1}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->loadPath(Lorg/w3c/dom/Element;)V

    .line 168
    return-void
.end method

.method private loadPath(Lorg/w3c/dom/Element;)V
    .locals 13
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    const-wide/16 v11, 0x0

    .line 192
    const-string v8, "Path"

    invoke-static {p1, v8}, Llewa/lockscreen/view/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 193
    .local v4, pathElement:Lorg/w3c/dom/Element;
    if-nez v4, :cond_1

    .line 194
    const/4 v8, 0x0

    iput-object v8, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mPath:Ljava/util/ArrayList;

    .line 225
    :cond_0
    return-void

    .line 197
    :cond_1
    const-string v8, "tolerance"

    const/16 v9, 0x96

    invoke-static {v4, v8, v9}, Llewa/lockscreen/view/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mTolerance:I

    .line 198
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mPath:Ljava/util/ArrayList;

    .line 200
    const-string v8, "x"

    invoke-interface {v4, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 201
    .local v5, pathX:Ljava/lang/String;
    const-string v8, "y"

    invoke-interface {v4, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 203
    .local v6, pathY:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 204
    iget-object v8, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->expression:Llewa/lockscreen/view/Expression;
    invoke-static {v8}, Llewa/lockscreen/UnlockerScreenElement;->access$100(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/Expression;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9, v5}, Llewa/lockscreen/view/Expression;->putDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v8, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->expression:Llewa/lockscreen/view/Expression;
    invoke-static {v8}, Llewa/lockscreen/UnlockerScreenElement;->access$200(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/Expression;

    move-result-object v8

    const-string v9, "x"

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Llewa/lockscreen/view/Expression;->getDou(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mPathX:Ljava/lang/String;

    .line 209
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 210
    iget-object v8, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->expression:Llewa/lockscreen/view/Expression;
    invoke-static {v8}, Llewa/lockscreen/UnlockerScreenElement;->access$300(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/Expression;

    move-result-object v8

    const-string v9, "y"

    invoke-virtual {v8, v9, v6}, Llewa/lockscreen/view/Expression;->putDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v8, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->expression:Llewa/lockscreen/view/Expression;
    invoke-static {v8}, Llewa/lockscreen/UnlockerScreenElement;->access$400(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/Expression;

    move-result-object v8

    const-string v9, "y"

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Llewa/lockscreen/view/Expression;->getDou(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mPathY:Ljava/lang/String;

    .line 216
    :goto_1
    const-string v8, "Position"

    invoke-interface {v4, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 218
    .local v3, nodelist:Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 219
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_0

    .line 220
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 221
    .local v0, et:Lorg/w3c/dom/Element;
    new-instance v7, Llewa/lockscreen/UnlockerScreenElement$Position;

    iget-object v8, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    iget-object v9, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mPathX:Ljava/lang/String;

    iget-object v10, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mPathY:Ljava/lang/String;

    invoke-direct {v7, v8, v0, v9, v10}, Llewa/lockscreen/UnlockerScreenElement$Position;-><init>(Llewa/lockscreen/UnlockerScreenElement;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .local v7, position:Llewa/lockscreen/UnlockerScreenElement$Position;
    iget-object v8, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mPath:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 207
    .end local v0           #et:Lorg/w3c/dom/Element;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #nodelist:Lorg/w3c/dom/NodeList;
    .end local v7           #position:Llewa/lockscreen/UnlockerScreenElement$Position;
    :cond_2
    const-string v8, "0"

    iput-object v8, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mPathX:Ljava/lang/String;

    goto :goto_0

    .line 213
    :cond_3
    const-string v8, "0"

    iput-object v8, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mPathY:Ljava/lang/String;

    goto :goto_1
.end method

.method private loadTask(Lorg/w3c/dom/Element;)V
    .locals 4
    .parameter "element"

    .prologue
    const/4 v3, 0x0

    .line 172
    const-string v1, "Intent"

    invoke-static {p1, v1}, Llewa/lockscreen/view/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 173
    .local v0, intentElement:Lorg/w3c/dom/Element;
    if-nez v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    new-instance v1, Llewa/lockscreen/UnlockerScreenElement$Task;

    iget-object v2, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    invoke-direct {v1, v2, v3}, Llewa/lockscreen/UnlockerScreenElement$Task;-><init>(Llewa/lockscreen/UnlockerScreenElement;Llewa/lockscreen/UnlockerScreenElement$1;)V

    iput-object v1, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mTask:Llewa/lockscreen/UnlockerScreenElement$Task;

    .line 179
    iget-object v1, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mTask:Llewa/lockscreen/UnlockerScreenElement$Task;

    const-string v2, "action"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Llewa/lockscreen/UnlockerScreenElement$Task;->action:Ljava/lang/String;

    .line 180
    iget-object v1, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mTask:Llewa/lockscreen/UnlockerScreenElement$Task;

    const-string v2, "type"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Llewa/lockscreen/UnlockerScreenElement$Task;->type:Ljava/lang/String;

    .line 181
    iget-object v1, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mTask:Llewa/lockscreen/UnlockerScreenElement$Task;

    const-string v2, "category"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Llewa/lockscreen/UnlockerScreenElement$Task;->category:Ljava/lang/String;

    .line 182
    iget-object v1, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mTask:Llewa/lockscreen/UnlockerScreenElement$Task;

    const-string v2, "package"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Llewa/lockscreen/UnlockerScreenElement$Task;->packageName:Ljava/lang/String;

    .line 183
    iget-object v1, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mTask:Llewa/lockscreen/UnlockerScreenElement$Task;

    const-string v2, "class"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Llewa/lockscreen/UnlockerScreenElement$Task;->className:Ljava/lang/String;

    .line 185
    iget-object v1, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mTask:Llewa/lockscreen/UnlockerScreenElement$Task;

    iget-object v1, v1, Llewa/lockscreen/UnlockerScreenElement$Task;->action:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    iput-object v3, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mTask:Llewa/lockscreen/UnlockerScreenElement$Task;

    goto :goto_0
.end method


# virtual methods
.method public getTransformedDist(Llewa/lockscreen/view/Utils$Point;II)I
    .locals 9
    .parameter "point"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 271
    iget-object v7, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mPath:Ljava/util/ArrayList;

    if-nez v7, :cond_0

    .line 272
    const v4, 0x7ffffffe

    .line 286
    .local v4, k:I
    :goto_0
    return v4

    .line 273
    .end local v4           #k:I
    :cond_0
    if-nez p1, :cond_1

    .line 274
    const v4, 0x7fffffff

    .restart local v4       #k:I
    goto :goto_0

    .line 276
    .end local v4           #k:I
    :cond_1
    iget-object v7, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->mTouchOffsetX:I
    invoke-static {v7}, Llewa/lockscreen/UnlockerScreenElement;->access$500(Llewa/lockscreen/UnlockerScreenElement;)I

    move-result v7

    sub-int v7, p2, v7

    int-to-double v0, v7

    .line 277
    .local v0, d:D
    iget-object v7, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->mTouchOffsetY:I
    invoke-static {v7}, Llewa/lockscreen/UnlockerScreenElement;->access$600(Llewa/lockscreen/UnlockerScreenElement;)I

    move-result v7

    sub-int v7, p3, v7

    int-to-double v2, v7

    .line 278
    .local v2, d1:D
    new-instance v6, Llewa/lockscreen/view/Utils$Point;

    invoke-direct {v6, v0, v1, v2, v3}, Llewa/lockscreen/view/Utils$Point;-><init>(DD)V

    .line 279
    .local v6, point1:Llewa/lockscreen/view/Utils$Point;
    const/4 v7, 0x1

    invoke-static {p1, v6, v7}, Llewa/lockscreen/view/Utils;->Dist(Llewa/lockscreen/view/Utils$Point;Llewa/lockscreen/view/Utils$Point;Z)D

    move-result-wide v7

    double-to-int v5, v7

    .line 280
    .local v5, l1:I
    iget v7, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mTolerance:I

    if-ge v5, v7, :cond_2

    .line 281
    move v4, v5

    .restart local v4       #k:I
    goto :goto_0

    .line 283
    .end local v4           #k:I
    :cond_2
    const v4, 0x7fffffff

    .restart local v4       #k:I
    goto :goto_0
.end method

.method protected onStateChange(Llewa/lockscreen/UnlockerScreenElement$State;Llewa/lockscreen/UnlockerScreenElement$State;)V
    .locals 7
    .parameter "mState"
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 291
    sget-object v5, Llewa/lockscreen/UnlockerScreenElement$State;->Invalid:Llewa/lockscreen/UnlockerScreenElement$State;

    if-ne p1, v5, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v5, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->context:Landroid/content/Context;
    invoke-static {v5}, Llewa/lockscreen/UnlockerScreenElement;->access$700(Llewa/lockscreen/UnlockerScreenElement;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lockscreen_sound_switch"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    move v0, v3

    .line 297
    .local v0, playSound:Z
    :goto_1
    iget-object v5, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Llewa/lockscreen/UnlockerScreenElement;->access$800(Llewa/lockscreen/UnlockerScreenElement;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 298
    .local v1, ringerMode:I
    const/4 v5, 0x2

    if-eq v1, v5, :cond_3

    move v2, v3

    .line 299
    .local v2, silentMode:Z
    :goto_2
    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 303
    sget-object v3, Llewa/lockscreen/UnlockerScreenElement$1;->$SwitchMap$lewa$lockscreen$UnlockerScreenElement$State:[I

    invoke-virtual {p2}, Llewa/lockscreen/UnlockerScreenElement$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 305
    :pswitch_0
    iget-object v3, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    iget-object v4, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mReachedSound:Ljava/lang/String;

    #calls: Llewa/lockscreen/UnlockerScreenElement;->playSound(Ljava/lang/String;)V
    invoke-static {v3, v4}, Llewa/lockscreen/UnlockerScreenElement;->access$900(Llewa/lockscreen/UnlockerScreenElement;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #playSound:Z
    .end local v1           #ringerMode:I
    .end local v2           #silentMode:Z
    :cond_2
    move v0, v4

    .line 294
    goto :goto_1

    .restart local v0       #playSound:Z
    .restart local v1       #ringerMode:I
    :cond_3
    move v2, v4

    .line 298
    goto :goto_2

    .line 308
    .restart local v2       #silentMode:Z
    :pswitch_1
    iget-object v3, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    iget-object v4, p0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mUnlockedSound:Ljava/lang/String;

    #calls: Llewa/lockscreen/UnlockerScreenElement;->playSound(Ljava/lang/String;)V
    invoke-static {v3, v4}, Llewa/lockscreen/UnlockerScreenElement;->access$900(Llewa/lockscreen/UnlockerScreenElement;Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
