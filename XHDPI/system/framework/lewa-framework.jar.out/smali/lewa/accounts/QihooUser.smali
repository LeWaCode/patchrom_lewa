.class public Llewa/accounts/QihooUser;
.super Ljava/lang/Object;
.source "QihooUser.java"


# static fields
.field private static instance:Llewa/accounts/QihooUser;


# instance fields
.field private mQihooId:Ljava/lang/String;

.field private mQihooQCookie:Ljava/lang/String;

.field private mQihooTCookie:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v0, p0, Llewa/accounts/QihooUser;->mQihooId:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Llewa/accounts/QihooUser;->mQihooTCookie:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Llewa/accounts/QihooUser;->mQihooQCookie:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static getInstance()Llewa/accounts/QihooUser;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Llewa/accounts/QihooUser;->instance:Llewa/accounts/QihooUser;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Llewa/accounts/QihooUser;

    invoke-direct {v0}, Llewa/accounts/QihooUser;-><init>()V

    sput-object v0, Llewa/accounts/QihooUser;->instance:Llewa/accounts/QihooUser;

    .line 16
    sget-object v0, Llewa/accounts/QihooUser;->instance:Llewa/accounts/QihooUser;

    const-string v1, "268603620"

    iput-object v1, v0, Llewa/accounts/QihooUser;->mQihooId:Ljava/lang/String;

    .line 17
    sget-object v0, Llewa/accounts/QihooUser;->instance:Llewa/accounts/QihooUser;

    const-string v1, "s=ce70f36ef573a3f8767f2ad3c44cab83&t=1398225899&a=1&v=1.0&lm="

    iput-object v1, v0, Llewa/accounts/QihooUser;->mQihooTCookie:Ljava/lang/String;

    .line 18
    sget-object v0, Llewa/accounts/QihooUser;->instance:Llewa/accounts/QihooUser;

    const-string v1, "u=cx00789_2013&n=Obool1989&r=&qid=268603620&im=220255dq9816&s=quc&src=pcw_i360&t=1&le=nzSgMKA3nUuzWGDjZGLmYzAioD=="

    iput-object v1, v0, Llewa/accounts/QihooUser;->mQihooQCookie:Ljava/lang/String;

    .line 20
    :cond_0
    sget-object v0, Llewa/accounts/QihooUser;->instance:Llewa/accounts/QihooUser;

    return-object v0
.end method


# virtual methods
.method public getmQihooId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Llewa/accounts/QihooUser;->mQihooId:Ljava/lang/String;

    return-object v0
.end method

.method public getmQihooQCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Llewa/accounts/QihooUser;->mQihooQCookie:Ljava/lang/String;

    return-object v0
.end method

.method public getmQihooTCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Llewa/accounts/QihooUser;->mQihooTCookie:Ljava/lang/String;

    return-object v0
.end method

.method public setmQihooId(Ljava/lang/String;)V
    .locals 0
    .parameter "mQihooId"

    .prologue
    .line 26
    iput-object p1, p0, Llewa/accounts/QihooUser;->mQihooId:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setmQihooQCookie(Ljava/lang/String;)V
    .locals 0
    .parameter "mQihooQCookie"

    .prologue
    .line 38
    iput-object p1, p0, Llewa/accounts/QihooUser;->mQihooQCookie:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setmQihooTCookie(Ljava/lang/String;)V
    .locals 0
    .parameter "mQihooTCookie"

    .prologue
    .line 32
    iput-object p1, p0, Llewa/accounts/QihooUser;->mQihooTCookie:Ljava/lang/String;

    .line 33
    return-void
.end method
