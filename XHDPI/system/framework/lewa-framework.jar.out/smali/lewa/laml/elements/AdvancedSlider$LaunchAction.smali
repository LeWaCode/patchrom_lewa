.class Llewa/laml/elements/AdvancedSlider$LaunchAction;
.super Ljava/lang/Object;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LaunchAction"
.end annotation


# instance fields
.field public mCommand:Llewa/laml/ActionCommand;

.field public mConfigTaskLoaded:Z

.field public mTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/laml/elements/AdvancedSlider$TaskExtra;",
            ">;"
        }
    .end annotation
.end field

.field public mTrigger:Llewa/laml/CommandTrigger;

.field final synthetic this$0:Llewa/laml/elements/AdvancedSlider;


# direct methods
.method private constructor <init>(Llewa/laml/elements/AdvancedSlider;)V
    .locals 0
    .parameter

    .prologue
    .line 1150
    iput-object p1, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->this$0:Llewa/laml/elements/AdvancedSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1151
    return-void
.end method

.method synthetic constructor <init>(Llewa/laml/elements/AdvancedSlider;Llewa/laml/elements/AdvancedSlider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1139
    invoke-direct {p0, p1}, Llewa/laml/elements/AdvancedSlider$LaunchAction;-><init>(Llewa/laml/elements/AdvancedSlider;)V

    return-void
.end method

.method private createIntentFromTask(Llewa/laml/util/Task;)Landroid/content/Intent;
    .locals 6
    .parameter "mTask"

    .prologue
    .line 1175
    if-eqz p1, :cond_6

    .line 1176
    iget-boolean v3, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mConfigTaskLoaded:Z

    if-nez v3, :cond_1

    .line 1177
    iget-object v3, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->this$0:Llewa/laml/elements/AdvancedSlider;

    iget-object v3, v3, Llewa/laml/elements/AdvancedSlider;->mRoot:Llewa/laml/ScreenElementRoot;

    iget-object v4, p1, Llewa/laml/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Llewa/laml/ScreenElementRoot;->findTask(Ljava/lang/String;)Llewa/laml/util/Task;

    move-result-object v0

    .line 1178
    .local v0, configTask:Llewa/laml/util/Task;
    if-eqz v0, :cond_0

    iget-object v3, v0, Llewa/laml/util/Task;->action:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1179
    move-object p1, v0

    .line 1180
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mConfigTaskLoaded:Z

    .line 1183
    .end local v0           #configTask:Llewa/laml/util/Task;
    :cond_1
    iget-object v3, p1, Llewa/laml/util/Task;->action:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1184
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p1, Llewa/laml/util/Task;->action:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1186
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p1, Llewa/laml/util/Task;->type:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1187
    iget-object v3, p1, Llewa/laml/util/Task;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1189
    :cond_2
    iget-object v3, p1, Llewa/laml/util/Task;->category:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1190
    iget-object v3, p1, Llewa/laml/util/Task;->category:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1192
    :cond_3
    iget-object v3, p1, Llewa/laml/util/Task;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p1, Llewa/laml/util/Task;->className:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1194
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p1, Llewa/laml/util/Task;->packageName:Ljava/lang/String;

    iget-object v5, p1, Llewa/laml/util/Task;->className:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1195
    :cond_4
    const/high16 v1, 0x3400

    .line 1196
    .local v1, flag:I
    iget-boolean v3, p1, Llewa/laml/util/Task;->anim:Z

    if-nez v3, :cond_5

    .line 1197
    const/high16 v3, 0x1

    or-int/2addr v1, v3

    .line 1198
    :cond_5
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1203
    .end local v1           #flag:I
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-object v2

    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isActivityIntent(Landroid/content/Intent;Landroid/content/pm/PackageManager;)Z
    .locals 2
    .parameter "intent"
    .parameter "packageManager"

    .prologue
    const/4 v0, 0x0

    .line 1171
    if-eqz p1, :cond_0

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private performTask()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 1207
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTaskList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/AdvancedSlider$TaskExtra;

    iget-object v0, v0, Llewa/laml/elements/AdvancedSlider$TaskExtra;->task:Llewa/laml/util/Task;

    invoke-direct {p0, v0}, Llewa/laml/elements/AdvancedSlider$LaunchAction;->createIntentFromTask(Llewa/laml/util/Task;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private performTask(Landroid/content/Context;)Landroid/content/Intent;
    .locals 7
    .parameter "context"

    .prologue
    .line 1154
    iget-object v5, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTaskList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Llewa/laml/elements/AdvancedSlider$TaskExtra;

    iget-object v5, v5, Llewa/laml/elements/AdvancedSlider$TaskExtra;->task:Llewa/laml/util/Task;

    invoke-direct {p0, v5}, Llewa/laml/elements/AdvancedSlider$LaunchAction;->createIntentFromTask(Llewa/laml/util/Task;)Landroid/content/Intent;

    move-result-object v2

    .line 1155
    .local v2, intentFirst:Landroid/content/Intent;
    iget-object v5, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTaskList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    if-nez p1, :cond_1

    .line 1167
    .end local v2           #intentFirst:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-object v2

    .line 1158
    .restart local v2       #intentFirst:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1159
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    iget-object v5, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTaskList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llewa/laml/elements/AdvancedSlider$TaskExtra;

    .line 1160
    .local v4, task:Llewa/laml/elements/AdvancedSlider$TaskExtra;
    invoke-virtual {v4}, Llewa/laml/elements/AdvancedSlider$TaskExtra;->isConditionTrue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1161
    iget-object v5, v4, Llewa/laml/elements/AdvancedSlider$TaskExtra;->task:Llewa/laml/util/Task;

    invoke-direct {p0, v5}, Llewa/laml/elements/AdvancedSlider$LaunchAction;->createIntentFromTask(Llewa/laml/util/Task;)Landroid/content/Intent;

    move-result-object v1

    .line 1162
    .local v1, intent:Landroid/content/Intent;
    invoke-direct {p0, v1, v3}, Llewa/laml/elements/AdvancedSlider$LaunchAction;->isActivityIntent(Landroid/content/Intent;Landroid/content/pm/PackageManager;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v2, v1

    .line 1163
    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 1211
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mCommand:Llewa/laml/ActionCommand;

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mCommand:Llewa/laml/ActionCommand;

    invoke-virtual {v0}, Llewa/laml/ActionCommand;->finish()V

    .line 1214
    :cond_0
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTrigger:Llewa/laml/CommandTrigger;

    if-eqz v0, :cond_1

    .line 1215
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTrigger:Llewa/laml/CommandTrigger;

    invoke-virtual {v0}, Llewa/laml/CommandTrigger;->finish()V

    .line 1216
    :cond_1
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 1219
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mCommand:Llewa/laml/ActionCommand;

    if-eqz v0, :cond_0

    .line 1220
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mCommand:Llewa/laml/ActionCommand;

    invoke-virtual {v0}, Llewa/laml/ActionCommand;->init()V

    .line 1222
    :cond_0
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTrigger:Llewa/laml/CommandTrigger;

    if-eqz v0, :cond_1

    .line 1223
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTrigger:Llewa/laml/CommandTrigger;

    invoke-virtual {v0}, Llewa/laml/CommandTrigger;->init()V

    .line 1224
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1227
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mCommand:Llewa/laml/ActionCommand;

    if-eqz v0, :cond_0

    .line 1228
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mCommand:Llewa/laml/ActionCommand;

    invoke-virtual {v0}, Llewa/laml/ActionCommand;->pause()V

    .line 1230
    :cond_0
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTrigger:Llewa/laml/CommandTrigger;

    if-eqz v0, :cond_1

    .line 1231
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTrigger:Llewa/laml/CommandTrigger;

    invoke-virtual {v0}, Llewa/laml/CommandTrigger;->pause()V

    .line 1232
    :cond_1
    return-void
.end method

.method public perform()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1235
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTaskList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1236
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->this$0:Llewa/laml/elements/AdvancedSlider;

    iget-object v0, v0, Llewa/laml/elements/AdvancedSlider;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v0}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Llewa/laml/elements/AdvancedSlider$LaunchAction;->performTask(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1242
    :goto_0
    return-object v0

    .line 1237
    :cond_0
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mCommand:Llewa/laml/ActionCommand;

    if-eqz v0, :cond_2

    .line 1238
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mCommand:Llewa/laml/ActionCommand;

    invoke-virtual {v0}, Llewa/laml/ActionCommand;->perform()V

    .line 1242
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1239
    :cond_2
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTrigger:Llewa/laml/CommandTrigger;

    if-eqz v0, :cond_1

    .line 1240
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTrigger:Llewa/laml/CommandTrigger;

    invoke-virtual {v0}, Llewa/laml/CommandTrigger;->perform()V

    goto :goto_1
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 1246
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mCommand:Llewa/laml/ActionCommand;

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mCommand:Llewa/laml/ActionCommand;

    invoke-virtual {v0}, Llewa/laml/ActionCommand;->resume()V

    .line 1249
    :cond_0
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTrigger:Llewa/laml/CommandTrigger;

    if-eqz v0, :cond_1

    .line 1250
    iget-object v0, p0, Llewa/laml/elements/AdvancedSlider$LaunchAction;->mTrigger:Llewa/laml/CommandTrigger;

    invoke-virtual {v0}, Llewa/laml/CommandTrigger;->resume()V

    .line 1251
    :cond_1
    return-void
.end method
