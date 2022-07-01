.class Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl$1;
.super Lccsanandroidx/room/EntityInsertionAdapter;
.source "SystemIdInfoDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl;-><init>(Lccsanandroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/room/EntityInsertionAdapter<",
        "Lccsanandroidx/work/impl/model/SystemIdInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl;


# direct methods
.method constructor <init>(Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl;Lccsanandroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl;
    .param p2, "database"    # Lccsanandroidx/room/RoomDatabase;

    .line 25
    iput-object p1, p0, Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl$1;->this$0:Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl;

    invoke-direct {p0, p2}, Lccsanandroidx/room/EntityInsertionAdapter;-><init>(Lccsanandroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;Lccsanandroidx/work/impl/model/SystemIdInfo;)V
    .locals 3
    .param p1, "stmt"    # Lccsanandroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lccsanandroidx/work/impl/model/SystemIdInfo;

    .line 33
    iget-object v0, p2, Lccsanandroidx/work/impl/model/SystemIdInfo;->workSpecId:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 34
    invoke-interface {p1, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p2, Lccsanandroidx/work/impl/model/SystemIdInfo;->workSpecId:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 38
    :goto_0
    const/4 v0, 0x2

    iget v1, p2, Lccsanandroidx/work/impl/model/SystemIdInfo;->systemId:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 39
    return-void
.end method

.method public bridge synthetic bind(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p2, Lccsanandroidx/work/impl/model/SystemIdInfo;

    invoke-virtual {p0, p1, p2}, Lccsanandroidx/work/impl/model/SystemIdInfoDao_Impl$1;->bind(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;Lccsanandroidx/work/impl/model/SystemIdInfo;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 28
    const-string v0, "INSERT OR REPLACE INTO `SystemIdInfo`(`work_spec_id`,`system_id`) VALUES (?,?)"

    return-object v0
.end method
