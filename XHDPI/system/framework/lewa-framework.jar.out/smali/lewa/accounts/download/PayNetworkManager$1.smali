.class Llewa/accounts/download/PayNetworkManager$1;
.super Ljava/lang/Object;
.source "PayNetworkManager.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llewa/accounts/download/PayNetworkManager;->setDefaultHostnameVerifier()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/accounts/download/PayNetworkManager;


# direct methods
.method constructor <init>(Llewa/accounts/download/PayNetworkManager;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Llewa/accounts/download/PayNetworkManager$1;->this$0:Llewa/accounts/download/PayNetworkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .parameter "hostname"
    .parameter "session"

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method
