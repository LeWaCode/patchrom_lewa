.class public interface abstract Lcom/tencent/qqpim/sdk/accesslayer/interfaces/localsync/ILocalRestoreObserver;
.super Ljava/lang/Object;


# static fields
.field public static final RESTORE_CONTACT_CANCLE:I = 0x1

.field public static final RESTORE_CONTACT_FAIL:I = -0x1

.field public static final RESTORE_CONTACT_SUCC:I


# virtual methods
.method public abstract onRestoreProcessBegin()V
.end method

.method public abstract onRestoreProcessFinish(I)V
.end method

.method public abstract onRestoreProgressChange(II)V
.end method
