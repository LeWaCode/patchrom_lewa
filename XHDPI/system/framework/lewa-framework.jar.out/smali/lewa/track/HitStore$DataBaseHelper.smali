.class Llewa/track/HitStore$DataBaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "HitStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/track/HitStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DataBaseHelper"
.end annotation


# instance fields
.field private final databaseVersion:I

.field private final store:Llewa/track/HitStore;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;ILlewa/track/HitStore;)V
    .locals 1
    .parameter "context"
    .parameter "dbName"
    .parameter "dbVersion"
    .parameter "hitStore"

    .prologue
    .line 600
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 601
    iput p3, p0, Llewa/track/HitStore$DataBaseHelper;->databaseVersion:I

    .line 602
    iput-object p4, p0, Llewa/track/HitStore$DataBaseHelper;->store:Llewa/track/HitStore;

    .line 603
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Llewa/track/HitStore;)V
    .locals 1
    .parameter "context"
    .parameter "dbName"
    .parameter "hitStore"

    .prologue
    .line 595
    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0, p3}, Llewa/track/HitStore$DataBaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ILlewa/track/HitStore;)V

    .line 596
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llewa/track/HitStore;)V
    .locals 1
    .parameter "context"
    .parameter "hitStore"

    .prologue
    .line 591
    const-string v0, "lewa_analytics.db"

    invoke-direct {p0, p1, v0, p2}, Llewa/track/HitStore$DataBaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Llewa/track/HitStore;)V

    .line 592
    return-void
.end method

.method private createHitTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "paramSQLiteDatabase"

    .prologue
    .line 646
    const-string v0, "DROP TABLE IF EXISTS hits;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 647
    invoke-static {}, Llewa/track/HitStore;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 648
    return-void
.end method

.method private migrateEventsToHits(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 5
    .parameter "paramSQLiteDatabase"
    .parameter "oldVersion"

    .prologue
    .line 652
    iget-object v2, p0, Llewa/track/HitStore$DataBaseHelper;->store:Llewa/track/HitStore;

    invoke-virtual {v2, p1}, Llewa/track/HitStore;->loadExistingSession(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 653
    iget-object v2, p0, Llewa/track/HitStore$DataBaseHelper;->store:Llewa/track/HitStore;

    invoke-virtual {v2, p1}, Llewa/track/HitStore;->getVisitorVarBuffer(Landroid/database/sqlite/SQLiteDatabase;)Llewa/track/CustomVariableBuffer;

    .line 654
    iget-object v2, p0, Llewa/track/HitStore$DataBaseHelper;->store:Llewa/track/HitStore;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3, p1, p2}, Llewa/track/HitStore;->peekEvents(ILandroid/database/sqlite/SQLiteDatabase;I)[Llewa/track/Event;

    move-result-object v0

    .line 656
    .local v0, arrayOfEvent:[Llewa/track/Event;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 657
    iget-object v2, p0, Llewa/track/HitStore$DataBaseHelper;->store:Llewa/track/HitStore;

    aget-object v3, v0, v1

    const/4 v4, 0x0

    #calls: Llewa/track/HitStore;->putEvent(Llewa/track/Event;Landroid/database/sqlite/SQLiteDatabase;Z)V
    invoke-static {v2, v3, p1, v4}, Llewa/track/HitStore;->access$500(Llewa/track/HitStore;Llewa/track/Event;Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 656
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 659
    :cond_0
    const-string v2, "DELETE from events;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 660
    const-string v2, "DELETE from item_events;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 661
    const-string v2, "DELETE from transaction_events;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 662
    const-string v2, "DELETE from custom_variables;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 663
    return-void
.end method


# virtual methods
.method createCustomVariableTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "paramSQLiteDatabase"

    .prologue
    .line 626
    const-string v2, "DROP TABLE IF EXISTS custom_variables;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 628
    invoke-static {}, Llewa/track/HitStore;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 630
    const-string v2, "DROP TABLE IF EXISTS custom_var_cache;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 632
    invoke-static {}, Llewa/track/HitStore;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 634
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    const/4 v2, 0x5

    if-gt v0, v2, :cond_0

    .line 635
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 636
    .local v1, localContentValues:Landroid/content/ContentValues;
    const-string v2, "event_id"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 637
    const-string v2, "cv_index"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 638
    const-string v2, "cv_name"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v2, "cv_scope"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 640
    const-string v2, "cv_value"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v2, "custom_var_cache"

    const-string v3, "event_id"

    invoke-virtual {p1, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 634
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 644
    .end local v1           #localContentValues:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 607
    const-string v0, "DROP TABLE IF EXISTS events;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 608
    invoke-static {}, Llewa/track/HitStore;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 609
    const-string v0, "DROP TABLE IF EXISTS session;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 610
    invoke-static {}, Llewa/track/HitStore;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 611
    const-string v0, "DROP TABLE IF EXISTS hits;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 612
    invoke-static {}, Llewa/track/HitStore;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p0, p1}, Llewa/track/HitStore$DataBaseHelper;->createCustomVariableTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 614
    invoke-direct {p0, p1}, Llewa/track/HitStore$DataBaseHelper;->createHitTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 615
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 16
    .parameter "paramSQLiteDatabase"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 679
    const-string v1, "Tracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downgrading database version from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not recommended."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-static {}, Llewa/track/HitStore;->access$200()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 682
    invoke-static {}, Llewa/track/HitStore;->access$400()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 684
    invoke-static {}, Llewa/track/HitStore;->access$100()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 686
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 687
    .local v13, localHashSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const-string v2, "custom_var_cache"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 690
    .local v12, localCursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 691
    const-string v1, "cv_index"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 693
    :catch_0
    move-exception v15

    .line 694
    .local v15, localSQLiteException1:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v1, "Tracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error on downgrade: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 697
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 699
    .end local v15           #localSQLiteException1:Landroid/database/sqlite/SQLiteException;
    :goto_1
    const/4 v10, 0x1

    .local v10, i:I
    :goto_2
    const/4 v1, 0x5

    if-gt v10, v1, :cond_2

    .line 701
    :try_start_2
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 702
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 703
    .local v11, localContentValues:Landroid/content/ContentValues;
    const-string v1, "event_id"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 704
    const-string v1, "cv_index"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 705
    const-string v1, "cv_name"

    const-string v2, ""

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v1, "cv_scope"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 707
    const-string v1, "cv_value"

    const-string v2, ""

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string v1, "custom_var_cache"

    const-string v2, "event_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 699
    .end local v11           #localContentValues:Landroid/content/ContentValues;
    :cond_0
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 697
    .end local v10           #i:I
    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v1

    .line 711
    .restart local v10       #i:I
    :catch_1
    move-exception v14

    .line 712
    .local v14, localSQLiteException:Landroid/database/sqlite/SQLiteException;
    const-string v1, "Tracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error inserting custom variable on downgrade: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 716
    .end local v14           #localSQLiteException:Landroid/database/sqlite/SQLiteException;
    :cond_2
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 619
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    const-string v0, "Tracker"

    const-string v1, "Warning: Need to update database, but it\'s read only."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter "paramSQLiteDatabase"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 666
    if-le p2, p3, :cond_1

    .line 667
    const-string v0, "Tracker"

    const-string v1, "oldVersion > newVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-virtual {p0, p1, p2, p3}, Llewa/track/HitStore$DataBaseHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    const/4 v0, 0x2

    if-ge p2, v0, :cond_2

    const/4 v0, 0x1

    if-le p3, v0, :cond_2

    .line 672
    invoke-virtual {p0, p1}, Llewa/track/HitStore$DataBaseHelper;->createCustomVariableTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 673
    :cond_2
    const/4 v0, 0x4

    if-ge p2, v0, :cond_0

    const/4 v0, 0x3

    if-le p3, v0, :cond_0

    .line 674
    invoke-direct {p0, p1}, Llewa/track/HitStore$DataBaseHelper;->createHitTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 675
    invoke-direct {p0, p1, p2}, Llewa/track/HitStore$DataBaseHelper;->migrateEventsToHits(Landroid/database/sqlite/SQLiteDatabase;I)V

    goto :goto_0
.end method
