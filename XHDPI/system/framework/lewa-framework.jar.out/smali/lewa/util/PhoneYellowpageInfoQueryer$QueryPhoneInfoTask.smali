.class public Llewa/util/PhoneYellowpageInfoQueryer$QueryPhoneInfoTask;
.super Landroid/os/AsyncTask;
.source "PhoneYellowpageInfoQueryer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/util/PhoneYellowpageInfoQueryer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QueryPhoneInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallback:Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfoCallback;

.field private mYellowPageApi:Lcom/yulore/yellowsdkapi/YellowPageApi;

.field final synthetic this$0:Llewa/util/PhoneYellowpageInfoQueryer;


# direct methods
.method public constructor <init>(Llewa/util/PhoneYellowpageInfoQueryer;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Llewa/util/PhoneYellowpageInfoQueryer$QueryPhoneInfoTask;->this$0:Llewa/util/PhoneYellowpageInfoQueryer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Llewa/util/PhoneYellowpageInfoQueryer$QueryPhoneInfoTask;->doInBackground([Ljava/lang/Object;)Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v8, 0x1

    .line 71
    const/4 v5, 0x0

    aget-object v5, p1, v5

    check-cast v5, Lcom/yulore/yellowsdkapi/YellowPageApi;

    iput-object v5, p0, Llewa/util/PhoneYellowpageInfoQueryer$QueryPhoneInfoTask;->mYellowPageApi:Lcom/yulore/yellowsdkapi/YellowPageApi;

    .line 72
    aget-object v4, p1, v8

    check-cast v4, Ljava/lang/String;

    .line 73
    .local v4, phone:Ljava/lang/String;
    const/4 v5, 0x2

    aget-object v5, p1, v5

    check-cast v5, Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfoCallback;

    iput-object v5, p0, Llewa/util/PhoneYellowpageInfoQueryer$QueryPhoneInfoTask;->mCallback:Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfoCallback;

    .line 75
    new-instance v3, Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;

    invoke-direct {v3}, Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;-><init>()V

    .line 76
    .local v3, info:Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;
    const-string v5, "PhoneYellowpageInfoQuery"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queryPhoneInfo() phone = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    if-eqz v4, :cond_0

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Llewa/util/PhoneYellowpageInfoQueryer$QueryPhoneInfoTask;->mYellowPageApi:Lcom/yulore/yellowsdkapi/YellowPageApi;

    if-eqz v5, :cond_0

    iget-object v5, p0, Llewa/util/PhoneYellowpageInfoQueryer$QueryPhoneInfoTask;->mCallback:Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfoCallback;

    if-nez v5, :cond_1

    .line 79
    :cond_0
    const-string v5, "PhoneYellowpageInfoQuery"

    const-string v6, "phone is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .end local v3           #info:Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;
    :goto_0
    return-object v3

    .line 83
    .restart local v3       #info:Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;
    :cond_1
    invoke-static {}, Llewa/util/PhoneYellowpageInfoQueryer;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 84
    const-string v5, "PhoneYellowpageInfoQuery"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cache phone = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {}, Llewa/util/PhoneYellowpageInfoQueryer;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;

    move-object v3, v5

    goto :goto_0

    .line 88
    :cond_2
    new-instance v0, Lcom/yulore/yellowsdkapi/entity/CallLogItem;

    invoke-direct {v0}, Lcom/yulore/yellowsdkapi/entity/CallLogItem;-><init>()V

    .line 89
    .local v0, calllog:Lcom/yulore/yellowsdkapi/entity/CallLogItem;
    invoke-virtual {v0, v4}, Lcom/yulore/yellowsdkapi/entity/CallLogItem;->setNumber(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, v8}, Lcom/yulore/yellowsdkapi/entity/CallLogItem;->setType(I)V

    .line 91
    iget-object v5, p0, Llewa/util/PhoneYellowpageInfoQueryer$QueryPhoneInfoTask;->mYellowPageApi:Lcom/yulore/yellowsdkapi/YellowPageApi;

    invoke-interface {v5, v0}, Lcom/yulore/yellowsdkapi/YellowPageApi;->queryNumberInfo(Lcom/yulore/yellowsdkapi/entity/CallLogItem;)Lcom/yulore/yellowsdkapi/entity/RecognitionEntity;

    move-result-object v1

    .line 92
    .local v1, entity:Lcom/yulore/yellowsdkapi/entity/RecognitionEntity;
    if-eqz v1, :cond_4

    iget-object v5, v1, Lcom/yulore/yellowsdkapi/entity/RecognitionEntity;->recognitionTel:Lcom/yulore/yellowsdkapi/entity/RecognitionTelephone;

    if-eqz v5, :cond_4

    .line 93
    const-string v5, "PhoneYellowpageInfoQuery"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v5, v1, Lcom/yulore/yellowsdkapi/entity/RecognitionEntity;->recognitionTel:Lcom/yulore/yellowsdkapi/entity/RecognitionTelephone;

    invoke-virtual {v5}, Lcom/yulore/yellowsdkapi/entity/RecognitionTelephone;->getFlag()Lcom/yulore/yellowsdkapi/entity/TelephoneFlag;

    move-result-object v2

    .line 95
    .local v2, flag:Lcom/yulore/yellowsdkapi/entity/TelephoneFlag;
    iget-object v5, v1, Lcom/yulore/yellowsdkapi/entity/RecognitionEntity;->recognitionTel:Lcom/yulore/yellowsdkapi/entity/RecognitionTelephone;

    invoke-virtual {v5}, Lcom/yulore/yellowsdkapi/entity/RecognitionTelephone;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;->phoneLocation:Ljava/lang/String;

    .line 96
    if-eqz v2, :cond_3

    .line 97
    invoke-virtual {v2}, Lcom/yulore/yellowsdkapi/entity/TelephoneFlag;->getNum()I

    move-result v5

    iput v5, v3, Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;->phoneMarkNum:I

    .line 98
    invoke-virtual {v2}, Lcom/yulore/yellowsdkapi/entity/TelephoneFlag;->getType()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;->phoneMarkDscp:Ljava/lang/String;

    .line 100
    :cond_3
    iput-object v4, v3, Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;->phone:Ljava/lang/String;

    .line 101
    invoke-static {}, Llewa/util/PhoneYellowpageInfoQueryer;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 104
    .end local v2           #flag:Lcom/yulore/yellowsdkapi/entity/TelephoneFlag;
    :cond_4
    const-string v5, "PhoneYellowpageInfoQuery"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queryNumberInfo "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    check-cast p1, Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;

    .end local p1
    invoke-virtual {p0, p1}, Llewa/util/PhoneYellowpageInfoQueryer$QueryPhoneInfoTask;->onPostExecute(Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;)V

    return-void
.end method

.method protected onPostExecute(Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Llewa/util/PhoneYellowpageInfoQueryer$QueryPhoneInfoTask;->mCallback:Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfoCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p0, Llewa/util/PhoneYellowpageInfoQueryer$QueryPhoneInfoTask;->mCallback:Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfoCallback;

    invoke-interface {v0, p1}, Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfoCallback;->call(Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;)V

    .line 116
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 67
    return-void
.end method
