.class public abstract Lccsancom/mbridge/msdk/foundation/db/e;
.super Ljava/lang/Object;
.source "CommonAbsDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/foundation/db/e$a;
    }
.end annotation


# instance fields
.field private a:Lccsancom/mbridge/msdk/foundation/db/e$a;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lccsancom/mbridge/msdk/foundation/db/e$a;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/e;->d()I

    move-result v2

    invoke-direct {v0, p0, p1, v1, v2}, Lccsancom/mbridge/msdk/foundation/db/e$a;-><init>(Lccsancom/mbridge/msdk/foundation/db/e;Lccsanandroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/db/e;->a:Lccsancom/mbridge/msdk/foundation/db/e$a;

    .line 12
    return-void
.end method


# virtual methods
.method public final a()Lccsanandroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 15
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/db/e;->a:Lccsancom/mbridge/msdk/foundation/db/e$a;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/db/e$a;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Lccsanandroid/database/sqlite/SQLiteDatabase;)V
.end method

.method protected abstract a(Lccsanandroid/database/sqlite/SQLiteDatabase;II)V
.end method

.method public final declared-synchronized b()Lccsanandroid/database/sqlite/SQLiteDatabase;
    .locals 1

    monitor-enter p0

    .line 19
    nop

    .line 21
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/db/e;->a:Lccsancom/mbridge/msdk/foundation/db/e$a;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/db/e$a;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 22
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 25
    :goto_0
    monitor-exit p0

    return-object v0
.end method

.method protected abstract b(Lccsanandroid/database/sqlite/SQLiteDatabase;II)V
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method protected abstract d()I
.end method
