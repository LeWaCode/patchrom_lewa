.class public Llewa/accounts/PayManager;
.super Ljava/lang/Object;
.source "PayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/accounts/PayManager$ResultReceiver;,
        Llewa/accounts/PayManager$DownloadApkHandler;,
        Llewa/accounts/PayManager$QueryOrderCallback;,
        Llewa/accounts/PayManager$QueryInfo;,
        Llewa/accounts/PayManager$QueryResultListener;,
        Llewa/accounts/PayManager$PayResultListener;
    }
.end annotation


# static fields
.field private static final PARAMS_OUT_FORMAT:Ljava/lang/String; = "json"

.field public static final PAY_FAILED:I = 0xc8

.field public static final PAY_RESULT_ACTION:Ljava/lang/String; = "com.lewa.accounts.PAY_RESULT"

.field public static final PAY_RESULT_STATE:Ljava/lang/String; = "state"

.field public static final PAY_SUCCESS:I = 0x64

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnlineInstallDialog:Landroid/app/ProgressDialog;

.field mPayListener:Llewa/accounts/PayManager$PayResultListener;

.field mQueryInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llewa/accounts/PayManager$QueryInfo;",
            ">;"
        }
    .end annotation
.end field

.field mQueryListeners:Llewa/accounts/PayManager$QueryResultListener;

.field private mResultReceiver:Llewa/accounts/PayManager$ResultReceiver;

.field mTokenCurrent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Llewa/accounts/PayManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llewa/accounts/PayManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/accounts/PayManager;->mQueryInfos:Ljava/util/List;

    .line 83
    iput-object p1, p0, Llewa/accounts/PayManager;->mContext:Landroid/content/Context;

    .line 84
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Llewa/accounts/PayManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Llewa/accounts/PayManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Llewa/accounts/PayManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Llewa/accounts/PayManager;ILlewa/accounts/QueryOrderResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Llewa/accounts/PayManager;->processErrorCode(ILlewa/accounts/QueryOrderResult;)V

    return-void
.end method

.method static synthetic access$300(Llewa/accounts/PayManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Llewa/accounts/PayManager;->closeOnlineInstallDialog()V

    return-void
.end method

.method static synthetic access$400(Llewa/accounts/PayManager;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Llewa/accounts/PayManager;->showInstallConfirmDialog(Landroid/content/Context;)V

    return-void
.end method

.method private closeOnlineInstallDialog()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Llewa/accounts/PayManager;->mOnlineInstallDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Llewa/accounts/PayManager;->mOnlineInstallDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 285
    :cond_0
    return-void
.end method

.method private copyApkFromAssets(Ljava/lang/String;)V
    .locals 7
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v5, p0, Llewa/accounts/PayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x90f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 220
    .local v3, is:Ljava/io/InputStream;
    new-instance v0, Ljava/io/File;

    sget-object v5, Llewa/accounts/configure/PayConfig;->APKPATH:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 222
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 224
    .local v1, fos:Ljava/io/FileOutputStream;
    const/16 v5, 0x400

    new-array v4, v5, [B

    .line 225
    .local v4, temp:[B
    const/4 v2, 0x0

    .line 226
    .local v2, i:I
    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    .line 227
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 231
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 232
    return-void
.end method

.method private getPayAction()Ljava/lang/String;
    .locals 6

    .prologue
    .line 200
    iget-object v4, p0, Llewa/accounts/PayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 201
    .local v2, manager:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 202
    .local v3, pkgList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 203
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.qihoo360pp.qihoopay"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 204
    const-string v4, "com.qihoopay.pay"

    .line 207
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private processErrorCode(ILlewa/accounts/QueryOrderResult;)V
    .locals 5
    .parameter "stateCode"
    .parameter "result"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 330
    if-ne p1, v3, :cond_0

    .line 332
    iput v3, p2, Llewa/accounts/QueryOrderResult;->result_code:I

    .line 348
    :goto_0
    return-void

    .line 333
    :cond_0
    if-ne p1, v4, :cond_1

    .line 334
    iget-object v0, p0, Llewa/accounts/PayManager;->mContext:Landroid/content/Context;

    const-string v1, "\u8d85\u65f6\u8fde\u63a5\uff0c\u4e0b\u8ba2\u5355\u5931\u8d25"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 335
    iput v2, p2, Llewa/accounts/QueryOrderResult;->result_code:I

    goto :goto_0

    .line 336
    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 337
    iget-object v0, p0, Llewa/accounts/PayManager;->mContext:Landroid/content/Context;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u4e0b\u8ba2\u5355\u5931\u8d25"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 338
    iput v3, p2, Llewa/accounts/QueryOrderResult;->result_code:I

    goto :goto_0

    .line 339
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 340
    iget-object v0, p0, Llewa/accounts/PayManager;->mContext:Landroid/content/Context;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u4e0b\u8ba2\u5355\u5931\u8d25"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 341
    iput v3, p2, Llewa/accounts/QueryOrderResult;->result_code:I

    goto :goto_0

    .line 342
    :cond_3
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 343
    iget-object v0, p0, Llewa/accounts/PayManager;->mContext:Landroid/content/Context;

    const-string v1, "\u67e5\u8be2\u8ba2\u5355\u5df2\u7ecf\u53d6\u6d88"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 344
    iput v4, p2, Llewa/accounts/QueryOrderResult;->result_code:I

    goto :goto_0

    .line 346
    :cond_4
    iput v3, p2, Llewa/accounts/QueryOrderResult;->result_code:I

    goto :goto_0
.end method

.method private registResultReceiver(Ljava/lang/String;)V
    .locals 3
    .parameter "token"

    .prologue
    .line 359
    new-instance v0, Landroid/content/IntentFilter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.qihoopay.result"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 360
    .local v0, filter:Landroid/content/IntentFilter;
    new-instance v1, Llewa/accounts/PayManager$ResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Llewa/accounts/PayManager$ResultReceiver;-><init>(Llewa/accounts/PayManager;Llewa/accounts/PayManager$1;)V

    iput-object v1, p0, Llewa/accounts/PayManager;->mResultReceiver:Llewa/accounts/PayManager$ResultReceiver;

    .line 361
    iget-object v1, p0, Llewa/accounts/PayManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Llewa/accounts/PayManager;->mResultReceiver:Llewa/accounts/PayManager$ResultReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 362
    return-void
.end method

.method private showInstallConfirmDialog(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 240
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 241
    .local v1, installDialog:Landroid/app/AlertDialog$Builder;
    const-string v2, "\u63d0\u793a"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 242
    const-string v2, "\u4e3a\u4e86\u4fdd\u8bc1\u60a8\u7684\u8d44\u91d1\u5b89\u5168\uff0c\u8bf7\u60a8\u5b89\u88c5360\u5b89\u5168\u652f\u4ed8"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 243
    const-string v2, "\u786e\u5b9a"

    new-instance v3, Llewa/accounts/PayManager$1;

    invoke-direct {v3, p0, p1}, Llewa/accounts/PayManager$1;-><init>(Llewa/accounts/PayManager;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 257
    const-string v2, "\u53d6\u6d88"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 258
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 259
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 260
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 261
    return-void
.end method

.method private showOnlineInstallDialog()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Llewa/accounts/PayManager;->mOnlineInstallDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Llewa/accounts/PayManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Llewa/accounts/PayManager;->mOnlineInstallDialog:Landroid/app/ProgressDialog;

    .line 269
    iget-object v0, p0, Llewa/accounts/PayManager;->mOnlineInstallDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u68c0\u67e5\u66f4\u65b0"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, p0, Llewa/accounts/PayManager;->mOnlineInstallDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d...\u8bf7\u7a0d\u540e...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Llewa/accounts/PayManager;->mOnlineInstallDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 272
    iget-object v0, p0, Llewa/accounts/PayManager;->mOnlineInstallDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 274
    :cond_0
    iget-object v0, p0, Llewa/accounts/PayManager;->mOnlineInstallDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 275
    iget-object v0, p0, Llewa/accounts/PayManager;->mOnlineInstallDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 276
    return-void
.end method

.method private unregistResultReceiver()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Llewa/accounts/PayManager;->mResultReceiver:Llewa/accounts/PayManager$ResultReceiver;

    if-eqz v0, :cond_0

    .line 369
    :try_start_0
    iget-object v0, p0, Llewa/accounts/PayManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Llewa/accounts/PayManager;->mResultReceiver:Llewa/accounts/PayManager$ResultReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public exit()V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Llewa/accounts/PayManager;->unregistResultReceiver()V

    .line 322
    return-void
.end method

.method public requestQueryOrder(Ljava/lang/String;Llewa/accounts/PayManager$QueryResultListener;)V
    .locals 17
    .parameter "tradeCode"
    .parameter "listener"

    .prologue
    .line 133
    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/accounts/PayManager;->mQueryInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Llewa/accounts/PayManager$QueryInfo;

    .line 134
    .local v15, info:Llewa/accounts/PayManager$QueryInfo;
    iget-object v1, v15, Llewa/accounts/PayManager$QueryInfo;->tradeCode:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    .end local v15           #info:Llewa/accounts/PayManager$QueryInfo;
    :goto_0
    return-void

    .line 138
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 139
    .local v5, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "mer_code"

    const-string v2, "20111117360"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v1, "mer_trade_code"

    move-object/from16 v0, p1

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v1, "out_format"

    const-string v2, "json"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v1, "sign_type"

    const-string v2, "MD5"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-static {v5}, Llewa/accounts/utils/SecSign;->buildSecSign(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v16

    .line 144
    .local v16, signValue:Ljava/lang/String;
    const-string v1, "sign"

    move-object/from16 v0, v16

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v7, Llewa/accounts/PayManager$QueryOrderCallback;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Llewa/accounts/PayManager$QueryOrderCallback;-><init>(Llewa/accounts/PayManager;)V

    .line 146
    .local v7, callback:Llewa/accounts/PayManager$QueryOrderCallback;
    new-instance v1, Lcom/qihoopp/framework/HttpCreater;

    invoke-direct {v1}, Lcom/qihoopp/framework/HttpCreater;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Llewa/accounts/PayManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/qihoopp/framework/HttpRequestMode;->POST:Lcom/qihoopp/framework/HttpRequestMode;

    const-string v4, "https://api.360pay.cn/trans/get"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/qihoopp/framework/HttpCreater;->create(Landroid/content/Context;Lcom/qihoopp/framework/HttpRequestMode;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/qihoopp/framework/HttpLoaderCallback;)Lcom/qihoopp/framework/HttpLoadThread;

    move-result-object v13

    .line 149
    .local v13, queryOrderTask:Lcom/qihoopp/framework/HttpLoadThread;
    move-object/from16 v0, p0

    iget-object v1, v0, Llewa/accounts/PayManager;->mQueryInfos:Ljava/util/List;

    new-instance v8, Llewa/accounts/PayManager$QueryInfo;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object v12, v7

    invoke-direct/range {v8 .. v13}, Llewa/accounts/PayManager$QueryInfo;-><init>(Llewa/accounts/PayManager;Ljava/lang/String;Llewa/accounts/PayManager$QueryResultListener;Llewa/accounts/PayManager$QueryOrderCallback;Lcom/qihoopp/framework/HttpLoadThread;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-virtual {v13}, Lcom/qihoopp/framework/HttpLoadThread;->start()V

    goto :goto_0
.end method

.method public setPayResultListener(Llewa/accounts/PayManager$PayResultListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 401
    iput-object p1, p0, Llewa/accounts/PayManager;->mPayListener:Llewa/accounts/PayManager$PayResultListener;

    .line 402
    return-void
.end method

.method public startPay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "token"
    .parameter "seckey"

    .prologue
    .line 86
    invoke-direct {p0}, Llewa/accounts/PayManager;->getPayAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, action:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Llewa/accounts/PayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/tempqihoopay.apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Llewa/accounts/configure/PayConfig;->APKPATH:Ljava/lang/String;

    .line 90
    :try_start_0
    const-string v4, "QihooPay.apk"

    invoke-direct {p0, v4}, Llewa/accounts/PayManager;->copyApkFromAssets(Ljava/lang/String;)V

    .line 91
    sget-object v4, Llewa/accounts/PayManager;->TAG:Ljava/lang/String;

    const-string v5, "assets\u4e2d\u6709\u6346\u7ed1\u652f\u4ed8Apk\u53ef\u4ee5\u4f7f\u7528"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v4, p0, Llewa/accounts/PayManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Llewa/accounts/PayManager;->showInstallConfirmDialog(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v2

    .line 94
    .local v2, e:Ljava/io/IOException;
    sget-object v4, Llewa/accounts/PayManager;->TAG:Ljava/lang/String;

    const-string v5, "assets\u4e2d\u65e0\u6346\u7ed1\u652f\u4ed8Apk\u53ef\u4ee5\u4f7f\u7528\uff0c\u9700\u8981\u8054\u7f51\u4e0b\u8f7d\u5b89\u88c5\u652f\u4ed8Apk"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-direct {p0}, Llewa/accounts/PayManager;->showOnlineInstallDialog()V

    .line 96
    new-instance v1, Llewa/accounts/download/PayApkDownload;

    iget-object v4, p0, Llewa/accounts/PayManager;->mContext:Landroid/content/Context;

    new-instance v5, Llewa/accounts/PayManager$DownloadApkHandler;

    iget-object v6, p0, Llewa/accounts/PayManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6}, Llewa/accounts/PayManager$DownloadApkHandler;-><init>(Llewa/accounts/PayManager;Landroid/content/Context;)V

    invoke-direct {v1, v4, v5}, Llewa/accounts/download/PayApkDownload;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 98
    .local v1, apkDownload:Llewa/accounts/download/PayApkDownload;
    const-string v4, "20111117360"

    invoke-virtual {v1, v4}, Llewa/accounts/download/PayApkDownload;->checkUpdate(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    .end local v1           #apkDownload:Llewa/accounts/download/PayApkDownload;
    .end local v2           #e:Ljava/io/IOException;
    :cond_0
    invoke-direct {p0}, Llewa/accounts/PayManager;->unregistResultReceiver()V

    .line 102
    invoke-direct {p0, p1}, Llewa/accounts/PayManager;->registResultReceiver(Ljava/lang/String;)V

    .line 103
    iput-object p1, p0, Llewa/accounts/PayManager;->mTokenCurrent:Ljava/lang/String;

    .line 104
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "com.qihoo360pp.qihoopay"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v4, "token"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v4, "seckey"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v4, "pkg"

    iget-object v5, p0, Llewa/accounts/PayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object v4, p0, Llewa/accounts/PayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public stopAllQueryOrder()V
    .locals 3

    .prologue
    .line 117
    iget-object v2, p0, Llewa/accounts/PayManager;->mQueryInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/accounts/PayManager$QueryInfo;

    .line 118
    .local v1, info:Llewa/accounts/PayManager$QueryInfo;
    iget-object v2, v1, Llewa/accounts/PayManager$QueryInfo;->task:Lcom/qihoopp/framework/HttpLoadThread;

    invoke-virtual {v2}, Lcom/qihoopp/framework/HttpLoadThread;->cancel()V

    goto :goto_0

    .line 120
    .end local v1           #info:Llewa/accounts/PayManager$QueryInfo;
    :cond_0
    return-void
.end method

.method public stopQueryOrder(Ljava/lang/String;)V
    .locals 3
    .parameter "merTradeCode"

    .prologue
    .line 126
    iget-object v2, p0, Llewa/accounts/PayManager;->mQueryInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/accounts/PayManager$QueryInfo;

    .line 127
    .local v1, info:Llewa/accounts/PayManager$QueryInfo;
    iget-object v2, v1, Llewa/accounts/PayManager$QueryInfo;->tradeCode:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, v1, Llewa/accounts/PayManager$QueryInfo;->task:Lcom/qihoopp/framework/HttpLoadThread;

    invoke-virtual {v2}, Lcom/qihoopp/framework/HttpLoadThread;->cancel()V

    goto :goto_0

    .line 131
    .end local v1           #info:Llewa/accounts/PayManager$QueryInfo;
    :cond_1
    return-void
.end method
