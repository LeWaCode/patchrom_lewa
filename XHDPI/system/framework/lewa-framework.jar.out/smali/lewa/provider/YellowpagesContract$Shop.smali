.class public Llewa/provider/YellowpagesContract$Shop;
.super Ljava/lang/Object;
.source "YellowpagesContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/provider/YellowpagesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Shop"
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final CAT_IDS:Ljava/lang/String; = "cat_ids"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DELETED:Ljava/lang/String; = "deleted"

.field public static final LARGE_IMAGE:Ljava/lang/String; = "large_image"

.field public static final LARGE_IMAGE_URL:Ljava/lang/String; = "large_image_url"

.field public static final LOGO:Ljava/lang/String; = "logo"

.field public static final LOGO_URL:Ljava/lang/String; = "logo_url"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PHONES:Ljava/lang/String; = "phones"

.field public static final PHONE_TYPES:Ljava/lang/String; = "phone_types"

.field public static final SHOP_ID:Ljava/lang/String; = "shop_id"

.field public static final WEB:Ljava/lang/String; = "web"

.field public static final WEIBO:Ljava/lang/String; = "weibo"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    sget-object v0, Llewa/provider/YellowpagesContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "shop"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Llewa/provider/YellowpagesContract$Shop;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
