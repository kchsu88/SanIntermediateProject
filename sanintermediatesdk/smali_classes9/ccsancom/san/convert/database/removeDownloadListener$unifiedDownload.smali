.class Lccsancom/san/convert/database/removeDownloadListener$unifiedDownload;
.super Lccsanandroidx/room/EntityDeletionOrUpdateAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/convert/database/removeDownloadListener;-><init>(Lccsanandroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lccsancom/san/convert/database/ConvertIntent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lccsancom/san/convert/database/removeDownloadListener;Lccsanandroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lccsanandroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Lccsanandroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public addDownloadListener(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic bind(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {p0, p1, p2}, Lccsancom/san/convert/database/removeDownloadListener$unifiedDownload;->addDownloadListener(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;Lccsancom/san/convert/database/ConvertIntent;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `tb_convert` WHERE `task_id` = ?"

    return-object v0
.end method
