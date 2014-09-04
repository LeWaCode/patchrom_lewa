.class public final Llewa/provider/YellowpagesContract;
.super Ljava/lang/Object;
.source "YellowpagesContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/provider/YellowpagesContract$Photo;,
        Llewa/provider/YellowpagesContract$Shop;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.lewa.providers.yellowpages"

.field public static final AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "content://com.lewa.providers.yellowpages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Llewa/provider/YellowpagesContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static openShopPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 4
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 39
    const-string v3, "photo"

    invoke-static {p1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 42
    .local v0, displayPhotoUri:Landroid/net/Uri;
    :try_start_0
    const-string v3, "r"

    invoke-virtual {p0, v0, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 43
    .local v2, fd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 45
    .end local v2           #fd:Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-object v3

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, e:Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_0
.end method
