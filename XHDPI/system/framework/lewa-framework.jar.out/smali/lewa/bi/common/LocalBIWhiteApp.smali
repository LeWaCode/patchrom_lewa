.class public Llewa/bi/common/LocalBIWhiteApp;
.super Ljava/lang/Object;
.source "LocalBIWhiteApp.java"

# interfaces
.implements Llewa/bi/common/IBIWhiteApp;


# static fields
.field public static final WHITE_APPS:Ljava/lang/String; = "[{\"name\":\"com.android.browser\"},{\"name\":\"com.baidu.searchbox\"},{\"name\":\"com.chaozh.iReader\"},{\"name\":\"com.baidu.BaiduMap\"},{\"name\":\"com.tudou.android\"},{\"name\":\"com.cdchocolate.ngsteam\"},{\"name\":\"com.mx.browser\"},{\"name\":\"com.mykj.game.ddz \"},{\"name\":\"com.kiloo.subwaysurf.full\"},{\"name\":\"com.sxiaoao.car3d3 \"},{\"name\":\"rg.cocos2dx.FishingJoy2\"},{\"name\":\"cn.jj\"},{\"name\":\"com.qihoo360.mobilesafe\"},{\"name\":\"com.iflytek.inputmethod\"},{\"name\":\"com.sohu.inputmethod.sogou\"}]"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Llewa/bi/common/LocalBIWhiteApp;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method public getWhiteApps()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v6, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 49
    .local v4, json:Lorg/json/JSONArray;
    iget-object v8, p0, Llewa/bi/common/LocalBIWhiteApp;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_2

    .line 50
    const/4 v2, 0x0

    .line 51
    .local v2, inStream:Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 53
    .local v7, white_app:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Llewa/bi/common/LocalBIWhiteApp;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x90f0001

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 54
    invoke-static {v2}, Llewa/bi/utils/FileUtils;->loadFile(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 58
    if-eqz v2, :cond_0

    .line 60
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 64
    :cond_0
    :goto_0
    if-eqz v7, :cond_2

    .line 66
    :try_start_2
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 73
    .end local v2           #inStream:Ljava/io/InputStream;
    .end local v4           #json:Lorg/json/JSONArray;
    .end local v7           #white_app:Ljava/lang/String;
    .local v5, json:Lorg/json/JSONArray;
    :goto_1
    if-nez v5, :cond_3

    .line 75
    :try_start_3
    new-instance v4, Lorg/json/JSONArray;

    const-string v8, "[{\"name\":\"com.android.browser\"},{\"name\":\"com.baidu.searchbox\"},{\"name\":\"com.chaozh.iReader\"},{\"name\":\"com.baidu.BaiduMap\"},{\"name\":\"com.tudou.android\"},{\"name\":\"com.cdchocolate.ngsteam\"},{\"name\":\"com.mx.browser\"},{\"name\":\"com.mykj.game.ddz \"},{\"name\":\"com.kiloo.subwaysurf.full\"},{\"name\":\"com.sxiaoao.car3d3 \"},{\"name\":\"rg.cocos2dx.FishingJoy2\"},{\"name\":\"cn.jj\"},{\"name\":\"com.qihoo360.mobilesafe\"},{\"name\":\"com.iflytek.inputmethod\"},{\"name\":\"com.sohu.inputmethod.sogou\"}]"

    invoke-direct {v4, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 80
    .end local v5           #json:Lorg/json/JSONArray;
    .restart local v4       #json:Lorg/json/JSONArray;
    :goto_2
    if-eqz v4, :cond_4

    .line 81
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_4

    .line 83
    :try_start_4
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 84
    .local v3, jo:Lorg/json/JSONObject;
    const-string v8, "name"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 81
    .end local v3           #jo:Lorg/json/JSONObject;
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 55
    .end local v1           #i:I
    .restart local v2       #inStream:Ljava/io/InputStream;
    .restart local v7       #white_app:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 58
    if-eqz v2, :cond_0

    .line 60
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 61
    :catch_1
    move-exception v8

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v8

    if-eqz v2, :cond_1

    .line 60
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 61
    :cond_1
    :goto_5
    throw v8

    .line 67
    :catch_2
    move-exception v0

    .line 68
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .end local v0           #e:Lorg/json/JSONException;
    .end local v2           #inStream:Ljava/io/InputStream;
    .end local v7           #white_app:Ljava/lang/String;
    :cond_2
    move-object v5, v4

    .end local v4           #json:Lorg/json/JSONArray;
    .restart local v5       #json:Lorg/json/JSONArray;
    goto :goto_1

    .line 76
    :catch_3
    move-exception v0

    .line 77
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .end local v0           #e:Lorg/json/JSONException;
    :cond_3
    move-object v4, v5

    .end local v5           #json:Lorg/json/JSONArray;
    .restart local v4       #json:Lorg/json/JSONArray;
    goto :goto_2

    .line 85
    .restart local v1       #i:I
    :catch_4
    move-exception v0

    .line 86
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 61
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #i:I
    .restart local v2       #inStream:Ljava/io/InputStream;
    .restart local v7       #white_app:Ljava/lang/String;
    :catch_5
    move-exception v8

    goto :goto_0

    :catch_6
    move-exception v9

    goto :goto_5

    .line 90
    .end local v2           #inStream:Ljava/io/InputStream;
    .end local v7           #white_app:Ljava/lang/String;
    :cond_4
    return-object v6
.end method
