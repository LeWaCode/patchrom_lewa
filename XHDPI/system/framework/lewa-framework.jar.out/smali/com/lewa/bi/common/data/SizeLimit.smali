.class public interface abstract annotation Lcom/lewa/bi/common/data/SizeLimit;
.super Ljava/lang/Object;
.source "SizeLimit.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final CIRCLES_PER_USER:I = 0x100

.field public static final MEMBERS_PER_CIRCLE:I = 0x1000

.field public static final SIZE_AUDIO:I = 0x100000

.field public static final SIZE_CONTENT:I = 0xc00

.field public static final SIZE_ID:I = 0x80

.field public static final SIZE_LONG_ID:I = 0x200

.field public static final SIZE_PHOTO:I = 0x100000

.field public static final SIZE_PICTURE:I = 0x500000

.field public static final SIZE_URL:I = 0x400

.field public static final SIZE_VIDEO:I = 0x1400000


# virtual methods
.method public abstract value()I
.end method
