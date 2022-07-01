.class public Lccsancom/mbridge/msdk/foundation/db/a;
.super Ljava/lang/Object;
.source "BaseDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mHelper:Lccsancom/mbridge/msdk/foundation/db/e;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/foundation/db/e;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/db/a;->mHelper:Lccsancom/mbridge/msdk/foundation/db/e;

    .line 10
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/db/a;->mHelper:Lccsancom/mbridge/msdk/foundation/db/e;

    .line 11
    return-void
.end method


# virtual methods
.method protected declared-synchronized getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;
    .locals 1

    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/db/a;->mHelper:Lccsancom/mbridge/msdk/foundation/db/e;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/db/e;->a()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;
    .locals 1

    monitor-enter p0

    .line 18
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/db/a;->mHelper:Lccsancom/mbridge/msdk/foundation/db/e;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/db/e;->b()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
