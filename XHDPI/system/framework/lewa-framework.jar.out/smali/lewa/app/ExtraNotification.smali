.class public Llewa/app/ExtraNotification;
.super Ljava/lang/Object;
.source "ExtraNotification.java"


# static fields
.field public static final TYPE_ADVERTISEMENT:I = 0x1


# instance fields
.field public mCustomizedIcon:Z

.field public mTraceContent:Ljava/lang/CharSequence;

.field public mTraceType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static getLedPwmOffOn(I)[I
    .locals 3
    .parameter "totalLength"

    .prologue
    const/4 v2, 0x0

    .line 17
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 18
    .local v0, values:[I
    div-int/lit8 v1, p0, 0x4

    mul-int/lit8 v1, v1, 0x3

    aput v1, v0, v2

    .line 19
    const/4 v1, 0x1

    aget v2, v0, v2

    sub-int v2, p0, v2

    aput v2, v0, v1

    .line 20
    return-object v0
.end method


# virtual methods
.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "parcel"

    .prologue
    const/4 v1, 0x1

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/app/ExtraNotification;->mCustomizedIcon:Z

    .line 29
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Llewa/app/ExtraNotification;->mTraceType:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Llewa/app/ExtraNotification;->mTraceContent:Ljava/lang/CharSequence;

    .line 33
    :cond_0
    return-void

    .line 27
    :cond_1
    iput-boolean v1, p0, Llewa/app/ExtraNotification;->mCustomizedIcon:Z

    goto :goto_0
.end method

.method public setCustomizedIcon(Z)Llewa/app/ExtraNotification;
    .locals 0
    .parameter "customizedIcon"

    .prologue
    .line 36
    iput-boolean p1, p0, Llewa/app/ExtraNotification;->mCustomizedIcon:Z

    .line 37
    return-object p0
.end method

.method public setTo(Llewa/app/ExtraNotification;)V
    .locals 1
    .parameter "extraNotification"

    .prologue
    .line 41
    iget v0, p1, Llewa/app/ExtraNotification;->mTraceType:I

    iput v0, p0, Llewa/app/ExtraNotification;->mTraceType:I

    .line 42
    iget-object v0, p1, Llewa/app/ExtraNotification;->mTraceContent:Ljava/lang/CharSequence;

    iput-object v0, p0, Llewa/app/ExtraNotification;->mTraceContent:Ljava/lang/CharSequence;

    .line 43
    iget-boolean v0, p1, Llewa/app/ExtraNotification;->mCustomizedIcon:Z

    iput-boolean v0, p0, Llewa/app/ExtraNotification;->mCustomizedIcon:Z

    .line 44
    return-void
.end method

.method public setTrace(ILjava/lang/CharSequence;)Llewa/app/ExtraNotification;
    .locals 0
    .parameter "type"
    .parameter "content"

    .prologue
    .line 47
    iput p1, p0, Llewa/app/ExtraNotification;->mTraceType:I

    .line 48
    iput-object p2, p0, Llewa/app/ExtraNotification;->mTraceContent:Ljava/lang/CharSequence;

    .line 49
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    iget-boolean v0, p0, Llewa/app/ExtraNotification;->mCustomizedIcon:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v0, p0, Llewa/app/ExtraNotification;->mTraceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object v0, p0, Llewa/app/ExtraNotification;->mTraceContent:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-object v0, p0, Llewa/app/ExtraNotification;->mTraceContent:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 61
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 53
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
