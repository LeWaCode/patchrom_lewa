.class final Lcom/yulore/yellowsdkapi/activity/c;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;


# direct methods
.method constructor <init>(Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/yellowsdkapi/activity/c;->a:Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPageFinished"

    invoke-static {v0, v1}, Lcom/yulore/yellowsdkapi/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/activity/c;->a:Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;

    invoke-virtual {v0, p1, p2}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->onPageLoadFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-static {}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPageStarted"

    invoke-static {v0, v1}, Lcom/yulore/yellowsdkapi/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/activity/c;->a:Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->onPageLoadStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceivedError"

    invoke-static {v0, v1}, Lcom/yulore/yellowsdkapi/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/activity/c;->a:Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->onPageLoadError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "intercept url:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yulore/yellowsdkapi/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tel:[\\S]*?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PHONE="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yulore/yellowsdkapi/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/activity/c;->a:Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->dialPhone(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v6

    :cond_1
    const-string v0, "geo:[\\S]*?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MAP"

    invoke-static {v0, v1}, Lcom/yulore/yellowsdkapi/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "?q="

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v0, "?q="

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {v1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/activity/c;->a:Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->startMapActivity(Ljava/lang/String;DD)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    :cond_2
    const-string v0, "http://\\w*?\\.dianhua\\.cn/page\\?c=([\\s\\S]*?)"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MORE_INFO"

    invoke-static {v0, v1}, Lcom/yulore/yellowsdkapi/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/activity/c;->a:Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;

    invoke-virtual {v0, p2}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->startExtraActivity(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "[\\s\\S]*?/webapp/kuaidi/[\\s\\S]*?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EXPRESS_QUERY_REGEX"

    invoke-static {v0, v1}, Lcom/yulore/yellowsdkapi/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/activity/c;->a:Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;

    const-string v1, "\u5feb\u9012\u67e5\u8be2"

    invoke-virtual {v0, p2, v1}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->startServiceActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "[\\s\\S]*?/webapp/recharge/[\\s\\S]*?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FEE_QUERY_REGEX"

    invoke-static {v0, v1}, Lcom/yulore/yellowsdkapi/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/activity/c;->a:Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;

    const-string v1, "\u8bdd\u8d39\u5145\u503c"

    invoke-virtual {v0, p2, v1}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->startServiceActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "[\\s\\S]*?/webapp/[\\s\\S]*?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CUSTOM_MENU_REGEX"

    invoke-static {v0, v1}, Lcom/yulore/yellowsdkapi/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/activity/c;->a:Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;

    const-string v1, "\u8bdd\u8d39\u5145\u503c"

    invoke-virtual {v0, p2, v1}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->startServiceActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "http://\\w*?\\.dianhua\\.cn/detail/([\\s\\S]*?)"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HOTLINE_DETAIL"

    invoke-static {v0, v1}, Lcom/yulore/yellowsdkapi/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/detail/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    const-string v1, "?"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/yellowsdkapi/activity/c;->a:Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;

    invoke-virtual {v1, v0}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->startShopActivity(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "http:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "dianhua.cn"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OFFICIAL_WEBSITE"

    invoke-static {v0, v1}, Lcom/yulore/yellowsdkapi/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulore/yellowsdkapi/activity/c;->a:Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;

    invoke-virtual {v0, p2}, Lcom/yulore/yellowsdkapi/activity/YuloreDetailActivity;->openMobileExplorer(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
