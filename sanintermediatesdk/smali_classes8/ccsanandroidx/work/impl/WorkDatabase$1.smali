.class final Lccsanandroidx/work/impl/WorkDatabase$1;
.super Lccsanandroidx/room/RoomDatabase$Callback;
.source "WorkDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/work/impl/WorkDatabase;->generateCleanupCallback()Lccsanandroidx/room/RoomDatabase$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Lccsanandroidx/room/RoomDatabase$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpen(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    .line 123
    invoke-super {p0, p1}, Lccsanandroidx/room/RoomDatabase$Callback;->onOpen(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 124
    invoke-interface {p1}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->beginTransaction()V

    .line 128
    :try_start_0
    invoke-static {}, Lccsanandroidx/work/impl/WorkDatabase;->getPruneSQL()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 129
    invoke-interface {p1}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-interface {p1}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    .line 132
    nop

    .line 133
    return-void

    .line 131
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    .line 132
    throw v0
.end method
