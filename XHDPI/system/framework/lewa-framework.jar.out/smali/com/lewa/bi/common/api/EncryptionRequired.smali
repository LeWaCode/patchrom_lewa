.class public interface abstract annotation Lcom/lewa/bi/common/api/EncryptionRequired;
.super Ljava/lang/Object;
.source "EncryptionRequired.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/lewa/bi/common/api/EncryptionRequired;
        value = .enum Lcom/lewa/bi/common/api/EncryptionRequired$Type;->OPTIONAL:Lcom/lewa/bi/common/api/EncryptionRequired$Type;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/bi/common/api/EncryptionRequired$Type;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract value()Lcom/lewa/bi/common/api/EncryptionRequired$Type;
.end method
