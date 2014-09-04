.class Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;
.super Ljava/lang/Object;
.source "UnlockerScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/lockscreen/UnlockerScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BounceAnimationController"
.end annotation


# instance fields
.field private mBounceAccelation:I

.field private mBounceAccelationExp:Ljava/lang/String;

.field private mBounceInitSpeed:I

.field private mBounceInitSpeedExp:Ljava/lang/String;

.field private mBounceStartPointIndex:I

.field private mBounceStartTime:J

.field private mEndPoint:Llewa/lockscreen/UnlockerScreenElement$EndPoint;

.field private mPreDistance:J

.field private mStartX:I

.field private mStartY:I

.field final synthetic this$0:Llewa/lockscreen/UnlockerScreenElement;


# direct methods
.method public constructor <init>(Llewa/lockscreen/UnlockerScreenElement;)V
    .locals 2
    .parameter

    .prologue
    .line 1234
    iput-object p1, p0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1235
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mBounceStartTime:J

    .line 1236
    return-void
.end method

.method private getPoint(IIIIJ)Llewa/lockscreen/view/Utils$Point;
    .locals 23
    .parameter "px_1"
    .parameter "py_1"
    .parameter "px_2"
    .parameter "py_2"
    .parameter "distVar"

    .prologue
    .line 1240
    new-instance v13, Llewa/lockscreen/view/Utils$Point;

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v19, v0

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v21, v0

    move-wide/from16 v0, v19

    move-wide/from16 v2, v21

    invoke-direct {v13, v0, v1, v2, v3}, Llewa/lockscreen/view/Utils$Point;-><init>(DD)V

    .line 1241
    .local v13, point_1:Llewa/lockscreen/view/Utils$Point;
    new-instance v14, Llewa/lockscreen/view/Utils$Point;

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v19, v0

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide/from16 v21, v0

    move-wide/from16 v0, v19

    move-wide/from16 v2, v21

    invoke-direct {v14, v0, v1, v2, v3}, Llewa/lockscreen/view/Utils$Point;-><init>(DD)V

    .line 1242
    .local v14, point_2:Llewa/lockscreen/view/Utils$Point;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v13, v14, v0}, Llewa/lockscreen/view/Utils;->Dist(Llewa/lockscreen/view/Utils$Point;Llewa/lockscreen/view/Utils$Point;Z)D

    move-result-wide v4

    .line 1243
    .local v4, dist:D
    const/4 v12, 0x0

    .line 1244
    .local v12, point:Llewa/lockscreen/view/Utils$Point;
    move-wide/from16 v0, p5

    long-to-double v0, v0

    move-wide/from16 v19, v0

    cmpl-double v19, v19, v4

    if-ltz v19, :cond_0

    .line 1245
    const/4 v12, 0x0

    .line 1254
    :goto_0
    return-object v12

    .line 1247
    :cond_0
    move-wide/from16 v0, p5

    long-to-double v0, v0

    move-wide/from16 v19, v0

    sub-double v19, v4, v19

    div-double v6, v19, v4

    .line 1248
    .local v6, distRate:D
    iget-wide v0, v14, Llewa/lockscreen/view/Utils$Point;->x:D

    move-wide/from16 v19, v0

    iget-wide v0, v13, Llewa/lockscreen/view/Utils$Point;->x:D

    move-wide/from16 v21, v0

    sub-double v19, v19, v21

    mul-double v8, v19, v6

    .line 1249
    .local v8, distX:D
    iget-wide v0, v14, Llewa/lockscreen/view/Utils$Point;->y:D

    move-wide/from16 v19, v0

    iget-wide v0, v13, Llewa/lockscreen/view/Utils$Point;->y:D

    move-wide/from16 v21, v0

    sub-double v19, v19, v21

    mul-double v10, v19, v6

    .line 1250
    .local v10, distY:D
    iget-wide v0, v13, Llewa/lockscreen/view/Utils$Point;->x:D

    move-wide/from16 v19, v0

    add-double v15, v19, v8

    .line 1251
    .local v15, px:D
    iget-wide v0, v13, Llewa/lockscreen/view/Utils$Point;->y:D

    move-wide/from16 v19, v0

    add-double v17, v19, v10

    .line 1252
    .local v17, py:D
    new-instance v12, Llewa/lockscreen/view/Utils$Point;

    .end local v12           #point:Llewa/lockscreen/view/Utils$Point;
    move-wide v0, v15

    move-wide/from16 v2, v17

    invoke-direct {v12, v0, v1, v2, v3}, Llewa/lockscreen/view/Utils$Point;-><init>(DD)V

    .restart local v12       #point:Llewa/lockscreen/view/Utils$Point;
    goto :goto_0
.end method

.method private startBounceAnimation(Llewa/lockscreen/UnlockerScreenElement$EndPoint;)V
    .locals 28
    .parameter "endpoint"

    .prologue
    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mBounceInitSpeedExp:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_0

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mBounceInitSpeedExp:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mBounceInitSpeed:I

    .line 1262
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mBounceAccelationExp:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_1

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mBounceAccelationExp:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mBounceAccelation:I

    .line 1266
    :cond_1
    if-nez p1, :cond_3

    .line 1332
    :cond_2
    :goto_0
    return-void

    .line 1270
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    move-object/from16 v24, v0

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;
    invoke-static/range {v24 .. v24}, Llewa/lockscreen/UnlockerScreenElement;->access$3100(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->getCurrentX()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mStartX:I

    .line 1271
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    move-object/from16 v24, v0

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;
    invoke-static/range {v24 .. v24}, Llewa/lockscreen/UnlockerScreenElement;->access$3100(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->getCurrentY()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mStartY:I

    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    move-object/from16 v24, v0

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;
    invoke-static/range {v24 .. v24}, Llewa/lockscreen/UnlockerScreenElement;->access$3100(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->getEndPointUnlocked()Z

    move-result v24

    if-eqz v24, :cond_4

    .line 1277
    :try_start_0
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    #setter for: Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mUnlockedPath:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->access$3202(Llewa/lockscreen/UnlockerScreenElement$EndPoint;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1278
    new-instance v7, Llewa/lockscreen/UnlockerScreenElement$Position;

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mStartX:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mStartY:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-direct {v7, v0, v1, v2, v3}, Llewa/lockscreen/UnlockerScreenElement$Position;-><init>(Llewa/lockscreen/UnlockerScreenElement;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    .local v7, pBegin:Llewa/lockscreen/UnlockerScreenElement$Position;
    new-instance v8, Llewa/lockscreen/UnlockerScreenElement$Position;

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mX:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mY:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-direct {v8, v0, v1, v2, v3}, Llewa/lockscreen/UnlockerScreenElement$Position;-><init>(Llewa/lockscreen/UnlockerScreenElement;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    .local v8, pTarget:Llewa/lockscreen/UnlockerScreenElement$Position;
    #getter for: Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mUnlockedPath:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->access$3200(Llewa/lockscreen/UnlockerScreenElement$EndPoint;)Ljava/util/ArrayList;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1283
    #getter for: Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mUnlockedPath:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->access$3200(Llewa/lockscreen/UnlockerScreenElement$EndPoint;)Ljava/util/ArrayList;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Llewa/lockscreen/view/DomParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1293
    .end local v7           #pBegin:Llewa/lockscreen/UnlockerScreenElement$Position;
    .end local v8           #pTarget:Llewa/lockscreen/UnlockerScreenElement$Position;
    :cond_4
    :goto_1
    #getter for: Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->access$3300(Llewa/lockscreen/UnlockerScreenElement$EndPoint;)Ljava/util/ArrayList;

    move-result-object v24

    if-nez v24, :cond_5

    #getter for: Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mUnlockedPath:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->access$3200(Llewa/lockscreen/UnlockerScreenElement$EndPoint;)Ljava/util/ArrayList;

    move-result-object v24

    if-eqz v24, :cond_2

    .line 1297
    :cond_5
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mBounceStartTime:J

    .line 1298
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mEndPoint:Llewa/lockscreen/UnlockerScreenElement$EndPoint;

    .line 1300
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mBounceStartPointIndex:I

    .line 1302
    const/4 v4, 0x0

    .line 1304
    .local v4, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/lockscreen/UnlockerScreenElement$Position;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    move-object/from16 v24, v0

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;
    invoke-static/range {v24 .. v24}, Llewa/lockscreen/UnlockerScreenElement;->access$3100(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->getEndPointUnlocked()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 1305
    #getter for: Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mUnlockedPath:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->access$3200(Llewa/lockscreen/UnlockerScreenElement$EndPoint;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1309
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 1310
    .local v22, size:I
    const/16 v23, 0x1

    .line 1311
    .local v23, temp:I
    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 1314
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3
    move/from16 v0, v22

    if-ge v6, v0, :cond_2

    .line 1315
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Llewa/lockscreen/UnlockerScreenElement$Position;

    .line 1316
    .local v12, position_1:Llewa/lockscreen/UnlockerScreenElement$Position;
    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Llewa/lockscreen/UnlockerScreenElement$Position;

    .line 1317
    .local v13, position_2:Llewa/lockscreen/UnlockerScreenElement$Position;
    invoke-virtual {v12}, Llewa/lockscreen/UnlockerScreenElement$Position;->getX()I

    move-result v24

    move/from16 v0, v24

    int-to-double v14, v0

    .line 1318
    .local v14, px_1:D
    invoke-virtual {v12}, Llewa/lockscreen/UnlockerScreenElement$Position;->getY()I

    move-result v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v18, v0

    .line 1319
    .local v18, py_1:D
    new-instance v9, Llewa/lockscreen/view/Utils$Point;

    move-wide/from16 v0, v18

    invoke-direct {v9, v14, v15, v0, v1}, Llewa/lockscreen/view/Utils$Point;-><init>(DD)V

    .line 1321
    .local v9, point_1:Llewa/lockscreen/view/Utils$Point;
    invoke-virtual {v13}, Llewa/lockscreen/UnlockerScreenElement$Position;->getX()I

    move-result v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v16, v0

    .line 1322
    .local v16, px_2:D
    invoke-virtual {v13}, Llewa/lockscreen/UnlockerScreenElement$Position;->getY()I

    move-result v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v20, v0

    .line 1323
    .local v20, py_2:D
    new-instance v10, Llewa/lockscreen/view/Utils$Point;

    move-wide/from16 v0, v16

    move-wide/from16 v2, v20

    invoke-direct {v10, v0, v1, v2, v3}, Llewa/lockscreen/view/Utils$Point;-><init>(DD)V

    .line 1325
    .local v10, point_2:Llewa/lockscreen/view/Utils$Point;
    new-instance v11, Llewa/lockscreen/view/Utils$Point;

    move-object/from16 v0, p0

    iget v0, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mStartX:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mStartY:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v24

    move-wide/from16 v2, v26

    invoke-direct {v11, v0, v1, v2, v3}, Llewa/lockscreen/view/Utils$Point;-><init>(DD)V

    .line 1326
    .local v11, point_3:Llewa/lockscreen/view/Utils$Point;
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-static {v9, v10, v11, v0}, Llewa/lockscreen/view/Utils;->pointProjectionOnSegment(Llewa/lockscreen/view/Utils$Point;Llewa/lockscreen/view/Utils$Point;Llewa/lockscreen/view/Utils$Point;Z)Llewa/lockscreen/view/Utils$Point;

    move-result-object v24

    if-eqz v24, :cond_7

    .line 1327
    add-int/lit8 v24, v23, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mBounceStartPointIndex:I

    goto/16 :goto_0

    .line 1286
    .end local v4           #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/lockscreen/UnlockerScreenElement$Position;>;"
    .end local v6           #i:I
    .end local v9           #point_1:Llewa/lockscreen/view/Utils$Point;
    .end local v10           #point_2:Llewa/lockscreen/view/Utils$Point;
    .end local v11           #point_3:Llewa/lockscreen/view/Utils$Point;
    .end local v12           #position_1:Llewa/lockscreen/UnlockerScreenElement$Position;
    .end local v13           #position_2:Llewa/lockscreen/UnlockerScreenElement$Position;
    .end local v14           #px_1:D
    .end local v16           #px_2:D
    .end local v18           #py_1:D
    .end local v20           #py_2:D
    .end local v22           #size:I
    .end local v23           #temp:I
    :catch_0
    move-exception v5

    .line 1288
    .local v5, e:Llewa/lockscreen/view/DomParseException;
    invoke-virtual {v5}, Llewa/lockscreen/view/DomParseException;->printStackTrace()V

    goto/16 :goto_1

    .line 1307
    .end local v5           #e:Llewa/lockscreen/view/DomParseException;
    .restart local v4       #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/lockscreen/UnlockerScreenElement$Position;>;"
    :cond_6
    #getter for: Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->access$3300(Llewa/lockscreen/UnlockerScreenElement$EndPoint;)Ljava/util/ArrayList;

    move-result-object v4

    goto/16 :goto_2

    .line 1330
    .restart local v6       #i:I
    .restart local v9       #point_1:Llewa/lockscreen/view/Utils$Point;
    .restart local v10       #point_2:Llewa/lockscreen/view/Utils$Point;
    .restart local v11       #point_3:Llewa/lockscreen/view/Utils$Point;
    .restart local v12       #position_1:Llewa/lockscreen/UnlockerScreenElement$Position;
    .restart local v13       #position_2:Llewa/lockscreen/UnlockerScreenElement$Position;
    .restart local v14       #px_1:D
    .restart local v16       #px_2:D
    .restart local v18       #py_1:D
    .restart local v20       #py_2:D
    .restart local v22       #size:I
    .restart local v23       #temp:I
    :cond_7
    add-int/lit8 v23, v23, 0x1

    .line 1314
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 1335
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mBounceStartTime:J

    .line 1336
    return-void
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter "element"

    .prologue
    .line 1339
    const-string v0, "bounceInitSpeed"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mBounceInitSpeedExp:Ljava/lang/String;

    .line 1340
    const-string v0, "bounceAcceleration"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mBounceAccelationExp:Ljava/lang/String;

    .line 1341
    return-void
.end method

.method public startBounceAnimationMoving(Llewa/lockscreen/UnlockerScreenElement$EndPoint;)V
    .locals 1
    .parameter "endpoint"

    .prologue
    .line 1344
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mBounceInitSpeedExp:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1345
    iget-object v0, p0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #calls: Llewa/lockscreen/UnlockerScreenElement;->cancelMoving()V
    invoke-static {v0}, Llewa/lockscreen/UnlockerScreenElement;->access$3400(Llewa/lockscreen/UnlockerScreenElement;)V

    .line 1349
    :goto_0
    return-void

    .line 1347
    :cond_0
    invoke-direct {p0, p1}, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->startBounceAnimation(Llewa/lockscreen/UnlockerScreenElement$EndPoint;)V

    goto :goto_0
.end method

.method public tick(J)V
    .locals 39
    .parameter "time"

    .prologue
    .line 1353
    move-object/from16 v0, p0

    iget-wide v13, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mBounceStartTime:J

    const-wide/16 v37, 0x0

    cmp-long v3, v13, v37

    if-gez v3, :cond_0

    .line 1438
    :goto_0
    return-void

    .line 1356
    :cond_0
    move-object/from16 v0, p0

    iget-wide v13, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mBounceStartTime:J

    const-wide/16 v37, 0x0

    cmp-long v3, v13, v37

    if-nez v3, :cond_1

    .line 1357
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mBounceStartTime:J

    .line 1358
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iput-wide v13, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mPreDistance:J

    goto :goto_0

    .line 1362
    :cond_1
    move-object/from16 v0, p0

    iget-wide v13, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mBounceStartTime:J

    sub-long v18, p1, v13

    .line 1363
    .local v18, deltTime:J
    move-object/from16 v0, p0

    iget v3, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mBounceInitSpeed:I

    int-to-long v13, v3

    mul-long v13, v13, v18

    const-wide/16 v37, 0x3e8

    div-long v26, v13, v37

    .line 1364
    .local v26, l5:J
    move-object/from16 v0, p0

    iget v3, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mBounceAccelation:I

    int-to-long v13, v3

    mul-long v13, v13, v18

    mul-long v13, v13, v18

    const-wide/32 v37, 0x1e8480

    div-long v28, v13, v37

    .line 1365
    .local v28, l6:J
    add-long v15, v26, v28

    .line 1366
    .local v15, l7:J
    move-object/from16 v0, p0

    iget v3, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mBounceAccelation:I

    int-to-long v13, v3

    mul-long v13, v13, v18

    const-wide/16 v37, 0x3e8

    div-long v30, v13, v37

    .line 1367
    .local v30, l9:J
    move-object/from16 v0, p0

    iget v3, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mBounceInitSpeed:I

    int-to-long v13, v3

    add-long v13, v13, v30

    const-wide/16 v37, 0x0

    cmp-long v3, v13, v37

    if-gtz v3, :cond_2

    .line 1368
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #calls: Llewa/lockscreen/UnlockerScreenElement;->cancelMoving()V
    invoke-static {v3}, Llewa/lockscreen/UnlockerScreenElement;->access$3400(Llewa/lockscreen/UnlockerScreenElement;)V

    .line 1369
    const-wide/16 v13, -0x1

    move-object/from16 v0, p0

    iput-wide v13, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mBounceStartTime:J

    goto :goto_0

    .line 1372
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mEndPoint:Llewa/lockscreen/UnlockerScreenElement$EndPoint;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mEndPoint:Llewa/lockscreen/UnlockerScreenElement$EndPoint;

    #getter for: Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {v3}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->access$3300(Llewa/lockscreen/UnlockerScreenElement$EndPoint;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mEndPoint:Llewa/lockscreen/UnlockerScreenElement$EndPoint;

    #getter for: Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mUnlockedPath:Ljava/util/ArrayList;
    invoke-static {v3}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->access$3200(Llewa/lockscreen/UnlockerScreenElement$EndPoint;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1373
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;
    invoke-static {v3}, Llewa/lockscreen/UnlockerScreenElement;->access$3100(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    move-result-object v3

    invoke-virtual {v3}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->getCurrentX()I

    move-result v6

    .line 1374
    .local v6, spCX:I
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;
    invoke-static {v3}, Llewa/lockscreen/UnlockerScreenElement;->access$3100(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    move-result-object v3

    invoke-virtual {v3}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->getCurrentY()I

    move-result v7

    .line 1375
    .local v7, spCY:I
    move-object/from16 v0, p0

    iget-wide v0, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mPreDistance:J

    move-wide/from16 v24, v0

    .line 1376
    .local v24, l13:J
    sub-long v8, v15, v24

    .line 1378
    .local v8, l14:J
    const/16 v32, 0x0

    .line 1380
    .local v32, point:Llewa/lockscreen/view/Utils$Point;
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mEndPoint:Llewa/lockscreen/UnlockerScreenElement$EndPoint;

    #getter for: Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {v3}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->access$3300(Llewa/lockscreen/UnlockerScreenElement$EndPoint;)Ljava/util/ArrayList;

    move-result-object v17

    .line 1381
    .local v17, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/lockscreen/UnlockerScreenElement$Position;>;"
    if-nez v17, :cond_4

    .line 1382
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mEndPoint:Llewa/lockscreen/UnlockerScreenElement$EndPoint;

    #getter for: Llewa/lockscreen/UnlockerScreenElement$EndPoint;->mUnlockedPath:Ljava/util/ArrayList;
    invoke-static {v3}, Llewa/lockscreen/UnlockerScreenElement$EndPoint;->access$3200(Llewa/lockscreen/UnlockerScreenElement$EndPoint;)Ljava/util/ArrayList;

    move-result-object v17

    .line 1384
    :cond_4
    const/16 v36, 0x0

    .line 1385
    .local v36, temp:I
    move-object/from16 v0, p0

    iget v0, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mBounceStartPointIndex:I

    move/from16 v23, v0

    .local v23, i:I
    :goto_1
    if-ltz v23, :cond_5

    .line 1386
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Llewa/lockscreen/UnlockerScreenElement$Position;

    .line 1387
    .local v35, position:Llewa/lockscreen/UnlockerScreenElement$Position;
    invoke-virtual/range {v35 .. v35}, Llewa/lockscreen/UnlockerScreenElement$Position;->getX()I

    move-result v4

    .line 1388
    .local v4, px:I
    invoke-virtual/range {v35 .. v35}, Llewa/lockscreen/UnlockerScreenElement$Position;->getY()I

    move-result v5

    .local v5, py:I
    move-object/from16 v3, p0

    .line 1389
    invoke-direct/range {v3 .. v9}, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->getPoint(IIIIJ)Llewa/lockscreen/view/Utils$Point;

    move-result-object v32

    .line 1390
    if-eqz v32, :cond_7

    .line 1391
    move/from16 v36, v23

    .line 1418
    .end local v4           #px:I
    .end local v5           #py:I
    .end local v35           #position:Llewa/lockscreen/UnlockerScreenElement$Position;
    :cond_5
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mBounceStartPointIndex:I

    .line 1419
    if-eqz v32, :cond_6

    .line 1420
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    move-object/from16 v0, v32

    iget-wide v13, v0, Llewa/lockscreen/view/Utils$Point;->x:D

    double-to-int v10, v13

    move-object/from16 v0, v32

    iget-wide v13, v0, Llewa/lockscreen/view/Utils$Point;->y:D

    double-to-int v13, v13

    #calls: Llewa/lockscreen/UnlockerScreenElement;->moveStartPoint(II)V
    invoke-static {v3, v10, v13}, Llewa/lockscreen/UnlockerScreenElement;->access$3600(Llewa/lockscreen/UnlockerScreenElement;II)V

    .line 1436
    .end local v6           #spCX:I
    .end local v7           #spCY:I
    .end local v8           #l14:J
    .end local v17           #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/lockscreen/UnlockerScreenElement$Position;>;"
    .end local v23           #i:I
    .end local v24           #l13:J
    .end local v36           #temp:I
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;
    invoke-static {v3}, Llewa/lockscreen/UnlockerScreenElement;->access$3700(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/view/ScreenContext;

    move-result-object v3

    const/4 v10, 0x1

    iput-boolean v10, v3, Llewa/lockscreen/view/ScreenContext;->mShouldUpdate:Z

    .line 1437
    move-object/from16 v0, p0

    iput-wide v15, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mPreDistance:J

    goto/16 :goto_0

    .line 1394
    .restart local v4       #px:I
    .restart local v5       #py:I
    .restart local v6       #spCX:I
    .restart local v7       #spCY:I
    .restart local v8       #l14:J
    .restart local v17       #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/lockscreen/UnlockerScreenElement$Position;>;"
    .restart local v23       #i:I
    .restart local v24       #l13:J
    .restart local v35       #position:Llewa/lockscreen/UnlockerScreenElement$Position;
    .restart local v36       #temp:I
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mBounceStartPointIndex:I

    if-nez v3, :cond_9

    .line 1395
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;
    invoke-static {v3}, Llewa/lockscreen/UnlockerScreenElement;->access$3100(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    move-result-object v3

    invoke-virtual {v3}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->getState()Llewa/lockscreen/UnlockerScreenElement$State;

    move-result-object v3

    sget-object v10, Llewa/lockscreen/UnlockerScreenElement$State;->Unlocked:Llewa/lockscreen/UnlockerScreenElement$State;

    if-ne v3, v10, :cond_8

    .line 1397
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v13, 0x64

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1402
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    move-object/from16 v0, p0

    iget-object v10, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mEndPoint:Llewa/lockscreen/UnlockerScreenElement$EndPoint;

    #calls: Llewa/lockscreen/UnlockerScreenElement;->doUnlock(Llewa/lockscreen/UnlockerScreenElement$EndPoint;)V
    invoke-static {v3, v10}, Llewa/lockscreen/UnlockerScreenElement;->access$3500(Llewa/lockscreen/UnlockerScreenElement;Llewa/lockscreen/UnlockerScreenElement$EndPoint;)V

    .line 1407
    :goto_4
    const-wide/16 v13, -0x1

    move-object/from16 v0, p0

    iput-wide v13, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mBounceStartTime:J

    .line 1385
    :goto_5
    add-int/lit8 v23, v23, -0x1

    goto :goto_1

    .line 1398
    :catch_0
    move-exception v22

    .line 1400
    .local v22, e:Ljava/lang/InterruptedException;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 1404
    .end local v22           #e:Ljava/lang/InterruptedException;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #calls: Llewa/lockscreen/UnlockerScreenElement;->cancelMoving()V
    invoke-static {v3}, Llewa/lockscreen/UnlockerScreenElement;->access$3400(Llewa/lockscreen/UnlockerScreenElement;)V

    goto :goto_4

    .line 1410
    :cond_9
    new-instance v33, Llewa/lockscreen/view/Utils$Point;

    int-to-double v13, v4

    int-to-double v0, v5

    move-wide/from16 v37, v0

    move-object/from16 v0, v33

    move-wide/from16 v1, v37

    invoke-direct {v0, v13, v14, v1, v2}, Llewa/lockscreen/view/Utils$Point;-><init>(DD)V

    .line 1411
    .local v33, point2:Llewa/lockscreen/view/Utils$Point;
    new-instance v34, Llewa/lockscreen/view/Utils$Point;

    int-to-double v13, v6

    int-to-double v0, v7

    move-wide/from16 v37, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v37

    invoke-direct {v0, v13, v14, v1, v2}, Llewa/lockscreen/view/Utils$Point;-><init>(DD)V

    .line 1413
    .local v34, point4:Llewa/lockscreen/view/Utils$Point;
    const/4 v3, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v1, v3}, Llewa/lockscreen/view/Utils;->Dist(Llewa/lockscreen/view/Utils$Point;Llewa/lockscreen/view/Utils$Point;Z)D

    move-result-wide v20

    .line 1414
    .local v20, dist:D
    long-to-double v13, v8

    sub-double v13, v13, v20

    double-to-long v8, v13

    .line 1415
    invoke-virtual/range {v35 .. v35}, Llewa/lockscreen/UnlockerScreenElement$Position;->getX()I

    move-result v6

    .line 1416
    invoke-virtual/range {v35 .. v35}, Llewa/lockscreen/UnlockerScreenElement$Position;->getY()I

    move-result v7

    goto :goto_5

    .line 1424
    .end local v4           #px:I
    .end local v5           #py:I
    .end local v6           #spCX:I
    .end local v7           #spCY:I
    .end local v8           #l14:J
    .end local v17           #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/lockscreen/UnlockerScreenElement$Position;>;"
    .end local v20           #dist:D
    .end local v23           #i:I
    .end local v24           #l13:J
    .end local v32           #point:Llewa/lockscreen/view/Utils$Point;
    .end local v33           #point2:Llewa/lockscreen/view/Utils$Point;
    .end local v34           #point4:Llewa/lockscreen/view/Utils$Point;
    .end local v35           #position:Llewa/lockscreen/UnlockerScreenElement$Position;
    .end local v36           #temp:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;
    invoke-static {v3}, Llewa/lockscreen/UnlockerScreenElement;->access$3100(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    move-result-object v3

    invoke-virtual {v3}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->getX()I

    move-result v11

    .line 1425
    .local v11, spX:I
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #getter for: Llewa/lockscreen/UnlockerScreenElement;->mStartPoint:Llewa/lockscreen/UnlockerScreenElement$StartPoint;
    invoke-static {v3}, Llewa/lockscreen/UnlockerScreenElement;->access$3100(Llewa/lockscreen/UnlockerScreenElement;)Llewa/lockscreen/UnlockerScreenElement$StartPoint;

    move-result-object v3

    invoke-virtual {v3}, Llewa/lockscreen/UnlockerScreenElement$StartPoint;->getY()I

    move-result v12

    .line 1427
    .local v12, spY:I
    move-object/from16 v0, p0

    iget v13, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mStartX:I

    move-object/from16 v0, p0

    iget v14, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mStartY:I

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v16}, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->getPoint(IIIIJ)Llewa/lockscreen/view/Utils$Point;

    move-result-object v32

    .line 1428
    .restart local v32       #point:Llewa/lockscreen/view/Utils$Point;
    if-nez v32, :cond_b

    .line 1429
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    #calls: Llewa/lockscreen/UnlockerScreenElement;->cancelMoving()V
    invoke-static {v3}, Llewa/lockscreen/UnlockerScreenElement;->access$3400(Llewa/lockscreen/UnlockerScreenElement;)V

    .line 1430
    const-wide/16 v13, -0x1

    move-object/from16 v0, p0

    iput-wide v13, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->mBounceStartTime:J

    goto/16 :goto_2

    .line 1432
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Llewa/lockscreen/UnlockerScreenElement$BounceAnimationController;->this$0:Llewa/lockscreen/UnlockerScreenElement;

    move-object/from16 v0, v32

    iget-wide v13, v0, Llewa/lockscreen/view/Utils$Point;->x:D

    double-to-int v10, v13

    move-object/from16 v0, v32

    iget-wide v13, v0, Llewa/lockscreen/view/Utils$Point;->y:D

    double-to-int v13, v13

    #calls: Llewa/lockscreen/UnlockerScreenElement;->moveStartPoint(II)V
    invoke-static {v3, v10, v13}, Llewa/lockscreen/UnlockerScreenElement;->access$3600(Llewa/lockscreen/UnlockerScreenElement;II)V

    goto/16 :goto_2
.end method
