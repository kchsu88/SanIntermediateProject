.class Lccsanandroidx/work/impl/model/DependencyDao_Impl$1;
.super Lccsanandroidx/room/EntityInsertionAdapter;
.source "DependencyDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/work/impl/model/DependencyDao_Impl;-><init>(Lccsanandroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/room/EntityInsertionAdapter<",
        "Lccsanandroidx/work/impl/model/Dependency;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/work/impl/model/DependencyDao_Impl;


# direct methods
.method constructor <init>(Lccsanandroidx/work/impl/model/DependencyDao_Impl;Lccsanandroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/work/impl/model/DependencyDao_Impl;
    .param p2, "database"    # Lccsanandroidx/room/RoomDatabase;

    .line 23
    iput-object p1, p0, Lccsanandroidx/work/impl/model/DependencyDao_Impl$1;->this$0:Lccsanandroidx/work/impl/model/DependencyDao_Impl;

    invoke-direct {p0, p2}, Lccsanandroidx/room/EntityInsertionAdapter;-><init>(Lccsanandroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;Lccsanandroidx/work/impl/model/Dependency;)V
    .locals 2
    .param p1, "stmt"    # Lccsanandroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lccsanandroidx/work/impl/model/Dependency;

    .line 31
    iget-object v0, p2, Lccsanandroidx/work/impl/model/Dependency;->workSpecId:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 32
    invoke-interface {p1, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p2, Lccsanandroidx/work/impl/model/Dependency;->workSpecId:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 36
    :goto_0
    iget-object v0, p2, Lccsanandroidx/work/impl/model/Dependency;->prerequisiteId:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 37
    invoke-interface {p1, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 39
    :cond_1
    iget-object v0, p2, Lccsanandroidx/work/impl/model/Dependency;->prerequisiteId:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 41
    :goto_1
    return-void
.end method

.method public bridge synthetic bind(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lccsanandroidx/work/impl/model/Dependency;

    invoke-virtual {p0, p1, p2}, Lccsanandroidx/work/impl/model/DependencyDao_Impl$1;->bind(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;Lccsanandroidx/work/impl/model/Dependency;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 26
    const-string v0, "INSERT OR IGNORE INTO `Dependency`(`work_spec_id`,`prerequisite_id`) VALUES (?,?)"

    return-object v0
.end method
