.class Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$3;
.super Lccsanandroidx/room/SharedSQLiteStatement;
.source "WorkSpecDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;-><init>(Lccsanandroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;


# direct methods
.method constructor <init>(Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;Lccsanandroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;
    .param p2, "database"    # Lccsanandroidx/room/RoomDatabase;

    .line 149
    iput-object p1, p0, Lccsanandroidx/work/impl/model/WorkSpecDao_Impl$3;->this$0:Lccsanandroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-direct {p0, p2}, Lccsanandroidx/room/SharedSQLiteStatement;-><init>(Lccsanandroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 2

    .line 152
    const-string v0, "UPDATE workspec SET output=? WHERE id=?"

    .line 153
    .local v0, "_query":Ljava/lang/String;
    const-string v1, "UPDATE workspec SET output=? WHERE id=?"

    return-object v1
.end method
