.class public final Lcom/tencent/qqpim/sdk/sync/contact/c;
.super Lcom/tencent/qqpim/sdk/sync/contact/a;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static b:[Landroid/accounts/Account;

.field private static c:[Landroid/content/SyncAdapterType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.xiaomi"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.exchange"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/c;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/contact/a;-><init>()V

    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/c;->b:[Landroid/accounts/Account;

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/c;->b:[Landroid/accounts/Account;

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/sync/contact/c;->c:[Landroid/content/SyncAdapterType;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/c;->c:[Landroid/content/SyncAdapterType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "GroupAccountMgrV2"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b()Lcom/tencent/qqpim/sdk/interfaces/e;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/contact/c;->b:[Landroid/accounts/Account;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/contact/c;->b:[Landroid/accounts/Account;

    array-length v2, v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v2, Lcom/tencent/qqpim/sdk/sync/contact/c;->c:[Landroid/content/SyncAdapterType;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/contact/c;->c:[Landroid/content/SyncAdapterType;

    array-length v2, v2

    if-nez v2, :cond_6

    :cond_2
    move v0, v1

    :goto_1
    sget-object v2, Lcom/tencent/qqpim/sdk/sync/contact/c;->a:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_3

    new-instance v0, Lcom/tencent/qqpim/sdk/interfaces/e;

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/contact/c;->b:[Landroid/accounts/Account;

    aget-object v2, v2, v1

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    sget-object v3, Lcom/tencent/qqpim/sdk/sync/contact/c;->b:[Landroid/accounts/Account;

    aget-object v1, v3, v1

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/tencent/qqpim/sdk/interfaces/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/tencent/qqpim/sdk/sync/contact/c;->b:[Landroid/accounts/Account;

    array-length v4, v3

    move v2, v1

    :goto_2
    if-lt v2, v4, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    aget-object v5, v3, v2

    if-eqz v5, :cond_5

    iget-object v6, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    sget-object v7, Lcom/tencent/qqpim/sdk/sync/contact/c;->a:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v0, Lcom/tencent/qqpim/sdk/interfaces/e;

    iget-object v1, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tencent/qqpim/sdk/interfaces/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    sget-object v5, Lcom/tencent/qqpim/sdk/sync/contact/c;->b:[Landroid/accounts/Account;

    array-length v6, v5

    move v3, v1

    move-object v4, v0

    :goto_3
    if-lt v3, v6, :cond_7

    if-eqz v4, :cond_b

    new-instance v0, Lcom/tencent/qqpim/sdk/interfaces/e;

    iget-object v1, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tencent/qqpim/sdk/interfaces/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    aget-object v2, v5, v3

    sget-object v7, Lcom/tencent/qqpim/sdk/sync/contact/c;->c:[Landroid/content/SyncAdapterType;

    array-length v8, v7

    move-object v0, v4

    move v4, v1

    :goto_4
    if-lt v4, v8, :cond_8

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v4, v0

    goto :goto_3

    :cond_8
    aget-object v9, v7, v4

    iget-object v10, v9, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    const-string v11, "com.android.contacts"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v9, v9, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v10, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    if-nez v0, :cond_9

    move-object v0, v2

    :cond_9
    const-string v9, "com.android.contacts"

    invoke-static {v2, v9}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    new-instance v0, Lcom/tencent/qqpim/sdk/interfaces/e;

    iget-object v1, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tencent/qqpim/sdk/interfaces/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    new-instance v0, Lcom/tencent/qqpim/sdk/interfaces/e;

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/contact/c;->b:[Landroid/accounts/Account;

    aget-object v2, v2, v1

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    sget-object v3, Lcom/tencent/qqpim/sdk/sync/contact/c;->b:[Landroid/accounts/Account;

    aget-object v1, v3, v1

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/tencent/qqpim/sdk/interfaces/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qqpim/sdk/interfaces/e;
    .locals 5

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    invoke-static {}, Lcom/tencent/qqpim/sdk/sync/contact/c;->b()Lcom/tencent/qqpim/sdk/interfaces/e;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    sget-object v1, Lcom/tencent/qqpim/sdk/sync/contact/c;->b:[Landroid/accounts/Account;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_3

    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/qqpim/sdk/sync/contact/c;->b()Lcom/tencent/qqpim/sdk/interfaces/e;

    move-result-object v0

    goto :goto_0

    :cond_3
    aget-object v3, v1, v0

    iget-object v4, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v0, Lcom/tencent/qqpim/sdk/interfaces/e;

    invoke-direct {v0, p1, p2}, Lcom/tencent/qqpim/sdk/interfaces/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
