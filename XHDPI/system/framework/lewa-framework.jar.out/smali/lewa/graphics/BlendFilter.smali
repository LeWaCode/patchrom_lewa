.class public Llewa/graphics/BlendFilter;
.super Ljava/lang/Object;
.source "BlendFilter.java"

# interfaces
.implements Llewa/graphics/IBitmapFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/graphics/BlendFilter$PorterDuffBlenderPerChannel;,
        Llewa/graphics/BlendFilter$PorterDuffBlender;,
        Llewa/graphics/BlendFilter$BlenderPerChannel;,
        Llewa/graphics/BlendFilter$Blender;
    }
.end annotation


# static fields
.field static final BLEND_TYPE_COLOR:I = 0x15

.field static final BLEND_TYPE_COLOR_BURN:I = 0xa

.field static final BLEND_TYPE_COLOR_DODGE:I = 0x9

.field static final BLEND_TYPE_DARKEN:I = 0x3

.field static final BLEND_TYPE_DIFFERENCE:I = 0x5

.field static final BLEND_TYPE_DIVIDE:I = 0x17

.field static final BLEND_TYPE_EXCLUSION:I = 0x12

.field static final BLEND_TYPE_HARD_LIGHT:I = 0xc

.field static final BLEND_TYPE_HARD_MIX:I = 0x11

.field static final BLEND_TYPE_HUE:I = 0x13

.field static final BLEND_TYPE_LIGHTEN:I = 0x4

.field static final BLEND_TYPE_LINEAR_BURN:I = 0x7

.field static final BLEND_TYPE_LINEAR_DODGE:I = 0x6

.field static final BLEND_TYPE_LINEAR_LIGHT:I = 0xf

.field static final BLEND_TYPE_LUMINOSITY:I = 0x16

.field static final BLEND_TYPE_MULTIPLY:I = 0x1

.field static final BLEND_TYPE_NORMAL:I = 0x0

.field static final BLEND_TYPE_OPACITY:I = 0xb

.field static final BLEND_TYPE_OVERLAY:I = 0x8

.field static final BLEND_TYPE_PIN_LIGHT:I = 0x10

.field static final BLEND_TYPE_SATURATION:I = 0x14

.field static final BLEND_TYPE_SCREEN:I = 0x2

.field static final BLEND_TYPE_SOFT_LIGHT:I = 0xd

.field static final BLEND_TYPE_SUBTRACT:I = 0x18

.field static final BLEND_TYPE_VIVID_LIGHT:I = 0xe

.field static final TAG:Ljava/lang/String; = "BlendFilter"


# instance fields
.field private mBlendType:I

.field private mInput:Llewa/graphics/BitmapInfo;

.field private mInputImageCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/AbstractMap$SimpleImmutableEntry",
            "<",
            "Ljava/lang/Integer;",
            "Llewa/graphics/BitmapInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsInputImageOnTop:Z

.field private mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Llewa/graphics/BlendFilter;->mBlendType:I

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/graphics/BlendFilter;->mIsInputImageOnTop:Z

    .line 75
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Llewa/graphics/BlendFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    .line 108
    return-void
.end method

.method private getCurrentBlender()Llewa/graphics/BlendFilter$Blender;
    .locals 3

    .prologue
    .line 140
    iget v0, p0, Llewa/graphics/BlendFilter;->mBlendType:I

    packed-switch v0, :pswitch_data_0

    .line 402
    const-string v0, "BlendFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown blender type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Llewa/graphics/BlendFilter;->mBlendType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 142
    :pswitch_0
    new-instance v0, Llewa/graphics/BlendFilter$1;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$1;-><init>(Llewa/graphics/BlendFilter;)V

    goto :goto_0

    .line 174
    :pswitch_1
    new-instance v0, Llewa/graphics/BlendFilter$2;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$2;-><init>(Llewa/graphics/BlendFilter;)V

    goto :goto_0

    .line 187
    :pswitch_2
    new-instance v0, Llewa/graphics/BlendFilter$3;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$3;-><init>(Llewa/graphics/BlendFilter;)V

    goto :goto_0

    .line 200
    :pswitch_3
    new-instance v0, Llewa/graphics/BlendFilter$4;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$4;-><init>(Llewa/graphics/BlendFilter;)V

    goto :goto_0

    .line 213
    :pswitch_4
    new-instance v0, Llewa/graphics/BlendFilter$5;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$5;-><init>(Llewa/graphics/BlendFilter;)V

    goto :goto_0

    .line 226
    :pswitch_5
    new-instance v0, Llewa/graphics/BlendFilter$6;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$6;-><init>(Llewa/graphics/BlendFilter;)V

    goto :goto_0

    .line 234
    :pswitch_6
    new-instance v0, Llewa/graphics/BlendFilter$7;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$7;-><init>(Llewa/graphics/BlendFilter;)V

    goto :goto_0

    .line 242
    :pswitch_7
    new-instance v0, Llewa/graphics/BlendFilter$8;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$8;-><init>(Llewa/graphics/BlendFilter;)V

    goto :goto_0

    .line 255
    :pswitch_8
    new-instance v0, Llewa/graphics/BlendFilter$9;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$9;-><init>(Llewa/graphics/BlendFilter;)V

    goto :goto_0

    .line 263
    :pswitch_9
    new-instance v0, Llewa/graphics/BlendFilter$10;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$10;-><init>(Llewa/graphics/BlendFilter;)V

    goto :goto_0

    .line 271
    :pswitch_a
    new-instance v0, Llewa/graphics/BlendFilter$11;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$11;-><init>(Llewa/graphics/BlendFilter;)V

    goto :goto_0

    .line 279
    :pswitch_b
    new-instance v0, Llewa/graphics/BlendFilter$12;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$12;-><init>(Llewa/graphics/BlendFilter;)V

    goto :goto_0

    .line 287
    :pswitch_c
    new-instance v0, Llewa/graphics/BlendFilter$13;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$13;-><init>(Llewa/graphics/BlendFilter;)V

    goto :goto_0

    .line 295
    :pswitch_d
    new-instance v0, Llewa/graphics/BlendFilter$14;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$14;-><init>(Llewa/graphics/BlendFilter;)V

    goto :goto_0

    .line 303
    :pswitch_e
    new-instance v0, Llewa/graphics/BlendFilter$15;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$15;-><init>(Llewa/graphics/BlendFilter;)V

    goto :goto_0

    .line 314
    :pswitch_f
    new-instance v0, Llewa/graphics/BlendFilter$16;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$16;-><init>(Llewa/graphics/BlendFilter;)V

    goto :goto_0

    .line 322
    :pswitch_10
    new-instance v0, Llewa/graphics/BlendFilter$17;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$17;-><init>(Llewa/graphics/BlendFilter;)V

    goto :goto_0

    .line 330
    :pswitch_11
    new-instance v0, Llewa/graphics/BlendFilter$18;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$18;-><init>(Llewa/graphics/BlendFilter;)V

    goto :goto_0

    .line 338
    :pswitch_12
    new-instance v0, Llewa/graphics/BlendFilter$19;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$19;-><init>(Llewa/graphics/BlendFilter;)V

    goto :goto_0

    .line 346
    :pswitch_13
    new-instance v0, Llewa/graphics/BlendFilter$20;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$20;-><init>(Llewa/graphics/BlendFilter;)V

    goto :goto_0

    .line 357
    :pswitch_14
    new-instance v0, Llewa/graphics/BlendFilter$21;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$21;-><init>(Llewa/graphics/BlendFilter;)V

    goto :goto_0

    .line 368
    :pswitch_15
    new-instance v0, Llewa/graphics/BlendFilter$22;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$22;-><init>(Llewa/graphics/BlendFilter;)V

    goto/16 :goto_0

    .line 379
    :pswitch_16
    new-instance v0, Llewa/graphics/BlendFilter$23;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$23;-><init>(Llewa/graphics/BlendFilter;)V

    goto/16 :goto_0

    .line 387
    :pswitch_17
    new-instance v0, Llewa/graphics/BlendFilter$24;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$24;-><init>(Llewa/graphics/BlendFilter;)V

    goto/16 :goto_0

    .line 395
    :pswitch_18
    new-instance v0, Llewa/graphics/BlendFilter$25;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$25;-><init>(Llewa/graphics/BlendFilter;)V

    goto/16 :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_11
        :pswitch_f
        :pswitch_15
        :pswitch_12
        :pswitch_10
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_e
        :pswitch_d
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method private getCurrentPorterDuffBlender()Llewa/graphics/BlendFilter$PorterDuffBlender;
    .locals 3

    .prologue
    .line 407
    iget-object v0, p0, Llewa/graphics/BlendFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_0

    .line 408
    new-instance v0, Llewa/graphics/BlendFilter$26;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$26;-><init>(Llewa/graphics/BlendFilter;)V

    .line 574
    :goto_0
    return-object v0

    .line 418
    :cond_0
    iget-object v0, p0, Llewa/graphics/BlendFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_1

    .line 419
    new-instance v0, Llewa/graphics/BlendFilter$27;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$27;-><init>(Llewa/graphics/BlendFilter;)V

    goto :goto_0

    .line 429
    :cond_1
    iget-object v0, p0, Llewa/graphics/BlendFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_2

    .line 430
    new-instance v0, Llewa/graphics/BlendFilter$28;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$28;-><init>(Llewa/graphics/BlendFilter;)V

    goto :goto_0

    .line 440
    :cond_2
    iget-object v0, p0, Llewa/graphics/BlendFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_3

    .line 441
    new-instance v0, Llewa/graphics/BlendFilter$29;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$29;-><init>(Llewa/graphics/BlendFilter;)V

    goto :goto_0

    .line 451
    :cond_3
    iget-object v0, p0, Llewa/graphics/BlendFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_4

    .line 452
    new-instance v0, Llewa/graphics/BlendFilter$30;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$30;-><init>(Llewa/graphics/BlendFilter;)V

    goto :goto_0

    .line 462
    :cond_4
    iget-object v0, p0, Llewa/graphics/BlendFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_5

    .line 463
    new-instance v0, Llewa/graphics/BlendFilter$31;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$31;-><init>(Llewa/graphics/BlendFilter;)V

    goto :goto_0

    .line 473
    :cond_5
    iget-object v0, p0, Llewa/graphics/BlendFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_6

    .line 474
    new-instance v0, Llewa/graphics/BlendFilter$32;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$32;-><init>(Llewa/graphics/BlendFilter;)V

    goto :goto_0

    .line 484
    :cond_6
    iget-object v0, p0, Llewa/graphics/BlendFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_7

    .line 485
    new-instance v0, Llewa/graphics/BlendFilter$33;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$33;-><init>(Llewa/graphics/BlendFilter;)V

    goto :goto_0

    .line 495
    :cond_7
    iget-object v0, p0, Llewa/graphics/BlendFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_8

    .line 496
    new-instance v0, Llewa/graphics/BlendFilter$34;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$34;-><init>(Llewa/graphics/BlendFilter;)V

    goto :goto_0

    .line 506
    :cond_8
    iget-object v0, p0, Llewa/graphics/BlendFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_9

    .line 507
    new-instance v0, Llewa/graphics/BlendFilter$35;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$35;-><init>(Llewa/graphics/BlendFilter;)V

    goto :goto_0

    .line 517
    :cond_9
    iget-object v0, p0, Llewa/graphics/BlendFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_a

    .line 518
    new-instance v0, Llewa/graphics/BlendFilter$36;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$36;-><init>(Llewa/graphics/BlendFilter;)V

    goto :goto_0

    .line 528
    :cond_a
    iget-object v0, p0, Llewa/graphics/BlendFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_b

    .line 529
    new-instance v0, Llewa/graphics/BlendFilter$37;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$37;-><init>(Llewa/graphics/BlendFilter;)V

    goto/16 :goto_0

    .line 539
    :cond_b
    iget-object v0, p0, Llewa/graphics/BlendFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_c

    .line 540
    new-instance v0, Llewa/graphics/BlendFilter$38;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$38;-><init>(Llewa/graphics/BlendFilter;)V

    goto/16 :goto_0

    .line 550
    :cond_c
    iget-object v0, p0, Llewa/graphics/BlendFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_d

    .line 551
    new-instance v0, Llewa/graphics/BlendFilter$39;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$39;-><init>(Llewa/graphics/BlendFilter;)V

    goto/16 :goto_0

    .line 561
    :cond_d
    iget-object v0, p0, Llewa/graphics/BlendFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_e

    .line 562
    new-instance v0, Llewa/graphics/BlendFilter$40;

    invoke-direct {v0, p0}, Llewa/graphics/BlendFilter$40;-><init>(Llewa/graphics/BlendFilter;)V

    goto/16 :goto_0

    .line 573
    :cond_e
    const-string v0, "BlendFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupport porter duff mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llewa/graphics/BlendFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private mergeWidthHeight(II)I
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v0, 0x7fff

    .line 579
    if-gt p1, v0, :cond_0

    if-gt p2, v0, :cond_0

    .line 580
    shl-int/lit8 v0, p1, 0x10

    or-int/2addr v0, p2

    return v0

    .line 582
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image\'s width or height to large:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private obtainInputImageBySize(II)Llewa/graphics/BitmapInfo;
    .locals 9
    .parameter "width"
    .parameter "height"

    .prologue
    .line 586
    invoke-direct {p0, p1, p2}, Llewa/graphics/BlendFilter;->mergeWidthHeight(II)I

    move-result v5

    .line 587
    .local v5, widthHeight:I
    iget-object v6, p0, Llewa/graphics/BlendFilter;->mInputImageCache:Ljava/lang/ref/SoftReference;

    if-nez v6, :cond_0

    const/4 v0, 0x0

    .line 588
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Llewa/graphics/BitmapInfo;>;"
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 589
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Llewa/graphics/BitmapInfo;

    .line 600
    :goto_1
    return-object v6

    .line 587
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Llewa/graphics/BitmapInfo;>;"
    :cond_0
    iget-object v6, p0, Llewa/graphics/BlendFilter;->mInputImageCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-object v0, v6

    goto :goto_0

    .line 590
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Llewa/graphics/BitmapInfo;>;"
    :cond_1
    iget-object v6, p0, Llewa/graphics/BlendFilter;->mInput:Llewa/graphics/BitmapInfo;

    iget v6, v6, Llewa/graphics/BitmapInfo;->width:I

    iget-object v7, p0, Llewa/graphics/BlendFilter;->mInput:Llewa/graphics/BitmapInfo;

    iget v7, v7, Llewa/graphics/BitmapInfo;->height:I

    invoke-direct {p0, v6, v7}, Llewa/graphics/BlendFilter;->mergeWidthHeight(II)I

    move-result v4

    .line 591
    .local v4, originWidthHeight:I
    if-ne v4, v5, :cond_2

    .line 592
    iget-object v6, p0, Llewa/graphics/BlendFilter;->mInput:Llewa/graphics/BitmapInfo;

    goto :goto_1

    .line 594
    :cond_2
    iget-object v6, p0, Llewa/graphics/BlendFilter;->mInput:Llewa/graphics/BitmapInfo;

    invoke-static {v6}, Llewa/graphics/BitmapInfo;->getBitmap(Llewa/graphics/BitmapInfo;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 595
    .local v3, originBitmap:Landroid/graphics/Bitmap;
    const/4 v6, 0x1

    invoke-static {v3, p1, p2, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 596
    .local v1, newBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Llewa/graphics/BitmapInfo;->getBitmapInfo(Landroid/graphics/Bitmap;)Llewa/graphics/BitmapInfo;

    move-result-object v2

    .line 597
    .local v2, newImageData:Llewa/graphics/BitmapInfo;
    new-instance v6, Ljava/lang/ref/SoftReference;

    new-instance v7, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v6, v7}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Llewa/graphics/BlendFilter;->mInputImageCache:Ljava/lang/ref/SoftReference;

    move-object v6, v2

    .line 600
    goto :goto_1
.end method


# virtual methods
.method public process(Llewa/graphics/BitmapInfo;)V
    .locals 14
    .parameter "imgData"

    .prologue
    .line 605
    iget-object v13, p0, Llewa/graphics/BlendFilter;->mInput:Llewa/graphics/BitmapInfo;

    if-eqz v13, :cond_2

    .line 606
    invoke-direct {p0}, Llewa/graphics/BlendFilter;->getCurrentBlender()Llewa/graphics/BlendFilter$Blender;

    move-result-object v0

    .line 607
    .local v0, blendable:Llewa/graphics/BlendFilter$Blender;
    if-eqz v0, :cond_2

    .line 608
    invoke-direct {p0}, Llewa/graphics/BlendFilter;->getCurrentPorterDuffBlender()Llewa/graphics/BlendFilter$PorterDuffBlender;

    move-result-object v7

    .line 609
    .local v7, porterDuffBlender:Llewa/graphics/BlendFilter$PorterDuffBlender;
    if-eqz v7, :cond_2

    .line 610
    iget v10, p1, Llewa/graphics/BitmapInfo;->width:I

    .line 611
    .local v10, width:I
    iget v5, p1, Llewa/graphics/BitmapInfo;->height:I

    .line 612
    .local v5, height:I
    iget-object v6, p1, Llewa/graphics/BitmapInfo;->pixels:[I

    .line 613
    .local v6, pixels:[I
    move-object v4, v6

    .line 614
    .local v4, dstPixels:[I
    invoke-direct {p0, v10, v5}, Llewa/graphics/BlendFilter;->obtainInputImageBySize(II)Llewa/graphics/BitmapInfo;

    move-result-object v13

    iget-object v9, v13, Llewa/graphics/BitmapInfo;->pixels:[I

    .line 615
    .local v9, srcPixels:[I
    iget-boolean v13, p0, Llewa/graphics/BlendFilter;->mIsInputImageOnTop:Z

    if-nez v13, :cond_0

    .line 616
    move-object v4, v9

    .line 617
    move-object v9, v6

    .line 619
    :cond_0
    const/4 v11, 0x0

    .local v11, x:I
    :goto_0
    if-ge v11, v10, :cond_2

    .line 620
    const/4 v12, 0x0

    .local v12, y:I
    :goto_1
    if-ge v12, v5, :cond_1

    .line 621
    mul-int v13, v12, v10

    add-int v2, v11, v13

    .line 622
    .local v2, colorIndex:I
    aget v3, v4, v2

    .line 623
    .local v3, dstArgb:I
    aget v8, v9, v2

    .line 624
    .local v8, srcArgb:I
    invoke-virtual {v0, v3, v8}, Llewa/graphics/BlendFilter$Blender;->blendColor(II)I

    move-result v1

    .line 625
    .local v1, blendedSrcArgb:I
    invoke-virtual {v7, v3, v1}, Llewa/graphics/BlendFilter$PorterDuffBlender;->blendFinal(II)I

    move-result v13

    aput v13, v6, v2

    .line 620
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 619
    .end local v1           #blendedSrcArgb:I
    .end local v2           #colorIndex:I
    .end local v3           #dstArgb:I
    .end local v8           #srcArgb:I
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 634
    .end local v0           #blendable:Llewa/graphics/BlendFilter$Blender;
    .end local v4           #dstPixels:[I
    .end local v5           #height:I
    .end local v6           #pixels:[I
    .end local v7           #porterDuffBlender:Llewa/graphics/BlendFilter$PorterDuffBlender;
    .end local v9           #srcPixels:[I
    .end local v10           #width:I
    .end local v11           #x:I
    .end local v12           #y:I
    :cond_2
    return-void
.end method

.method public setBlendType(I)V
    .locals 0
    .parameter "blendType"

    .prologue
    .line 637
    iput p1, p0, Llewa/graphics/BlendFilter;->mBlendType:I

    .line 638
    return-void
.end method

.method public setBlendTypeName(Ljava/lang/String;)V
    .locals 3
    .parameter "typeName"

    .prologue
    .line 641
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "Normal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 642
    const-string v0, "Multiply"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    const/4 v0, 0x1

    iput v0, p0, Llewa/graphics/BlendFilter;->mBlendType:I

    .line 645
    :cond_0
    const-string v0, "Screen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 646
    const/4 v0, 0x2

    iput v0, p0, Llewa/graphics/BlendFilter;->mBlendType:I

    .line 648
    :cond_1
    const-string v0, "Darken"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 649
    const/4 v0, 0x3

    iput v0, p0, Llewa/graphics/BlendFilter;->mBlendType:I

    .line 651
    :cond_2
    const-string v0, "Lighten"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 652
    const/4 v0, 0x4

    iput v0, p0, Llewa/graphics/BlendFilter;->mBlendType:I

    .line 654
    :cond_3
    const-string v0, "Difference"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 655
    const/4 v0, 0x5

    iput v0, p0, Llewa/graphics/BlendFilter;->mBlendType:I

    .line 657
    :cond_4
    const-string v0, "LinearDodge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 658
    const/4 v0, 0x6

    iput v0, p0, Llewa/graphics/BlendFilter;->mBlendType:I

    .line 660
    :cond_5
    const-string v0, "LinearBurn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 661
    const/4 v0, 0x7

    iput v0, p0, Llewa/graphics/BlendFilter;->mBlendType:I

    .line 663
    :cond_6
    const-string v0, "Overlay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 664
    const/16 v0, 0x8

    iput v0, p0, Llewa/graphics/BlendFilter;->mBlendType:I

    .line 666
    :cond_7
    const-string v0, "ColorDodge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 667
    const/16 v0, 0x9

    iput v0, p0, Llewa/graphics/BlendFilter;->mBlendType:I

    .line 669
    :cond_8
    const-string v0, "ColorBurn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 670
    const/16 v0, 0xa

    iput v0, p0, Llewa/graphics/BlendFilter;->mBlendType:I

    .line 672
    :cond_9
    const-string v0, "Opacity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 673
    const/16 v0, 0xb

    iput v0, p0, Llewa/graphics/BlendFilter;->mBlendType:I

    .line 675
    :cond_a
    const-string v0, "HardLight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 676
    const/16 v0, 0xc

    iput v0, p0, Llewa/graphics/BlendFilter;->mBlendType:I

    .line 678
    :cond_b
    const-string v0, "SoftLight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 679
    const/16 v0, 0xd

    iput v0, p0, Llewa/graphics/BlendFilter;->mBlendType:I

    .line 681
    :cond_c
    const-string v0, "VividLight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 682
    const/16 v0, 0xe

    iput v0, p0, Llewa/graphics/BlendFilter;->mBlendType:I

    .line 684
    :cond_d
    const-string v0, "LinearLight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 685
    const/16 v0, 0xf

    iput v0, p0, Llewa/graphics/BlendFilter;->mBlendType:I

    .line 687
    :cond_e
    const-string v0, "PinLight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 688
    const/16 v0, 0x10

    iput v0, p0, Llewa/graphics/BlendFilter;->mBlendType:I

    .line 690
    :cond_f
    const-string v0, "HardMix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 691
    const/16 v0, 0x11

    iput v0, p0, Llewa/graphics/BlendFilter;->mBlendType:I

    .line 693
    :cond_10
    const-string v0, "Exclusion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 694
    const/16 v0, 0x12

    iput v0, p0, Llewa/graphics/BlendFilter;->mBlendType:I

    .line 696
    :cond_11
    const-string v0, "Hue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 697
    const/16 v0, 0x13

    iput v0, p0, Llewa/graphics/BlendFilter;->mBlendType:I

    .line 699
    :cond_12
    const-string v0, "Saturation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 700
    const/16 v0, 0x14

    iput v0, p0, Llewa/graphics/BlendFilter;->mBlendType:I

    .line 702
    :cond_13
    const-string v0, "Color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 703
    const/16 v0, 0x15

    iput v0, p0, Llewa/graphics/BlendFilter;->mBlendType:I

    .line 705
    :cond_14
    const-string v0, "Luminosity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 706
    const/16 v0, 0x16

    iput v0, p0, Llewa/graphics/BlendFilter;->mBlendType:I

    .line 708
    :cond_15
    const-string v0, "Divide"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 709
    const/16 v0, 0x17

    iput v0, p0, Llewa/graphics/BlendFilter;->mBlendType:I

    .line 711
    :cond_16
    const-string v0, "Subtract"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 712
    const/16 v0, 0x18

    iput v0, p0, Llewa/graphics/BlendFilter;->mBlendType:I

    .line 719
    :goto_0
    return-void

    .line 714
    :cond_17
    const-string v0, "BlendFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown blend type name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 717
    :cond_18
    const/4 v0, 0x0

    iput v0, p0, Llewa/graphics/BlendFilter;->mBlendType:I

    goto :goto_0
.end method

.method public setInputImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 722
    invoke-static {p1}, Llewa/graphics/BitmapInfo;->getBitmapInfo(Landroid/graphics/Bitmap;)Llewa/graphics/BitmapInfo;

    move-result-object v0

    iput-object v0, p0, Llewa/graphics/BlendFilter;->mInput:Llewa/graphics/BitmapInfo;

    .line 723
    return-void
.end method

.method public setIsInputImageOnTop(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 726
    iput-boolean p1, p0, Llewa/graphics/BlendFilter;->mIsInputImageOnTop:Z

    .line 727
    return-void
.end method

.method public setPorterDuffMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 730
    iput-object p1, p0, Llewa/graphics/BlendFilter;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    .line 731
    return-void
.end method
