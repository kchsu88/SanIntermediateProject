.class public Lccsanandroidx/work/impl/WorkDatabaseMigrations$WorkMigration;
.super Lccsanandroidx/room/migration/Migration;
.source "WorkDatabaseMigrations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/work/impl/WorkDatabaseMigrations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WorkMigration"
.end annotation


# instance fields
.field final mContext:Lccsanandroid/content/Context;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "startVersion"    # I
    .param p3, "endVersion"    # I

    .line 98
    invoke-direct {p0, p2, p3}, Lccsanandroidx/room/migration/Migration;-><init>(II)V

    .line 99
    iput-object p1, p0, Lccsanandroidx/work/impl/WorkDatabaseMigrations$WorkMigration;->mContext:Lccsanandroid/content/Context;

    .line 100
    return-void
.end method


# virtual methods
.method public migrate(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 2
    .param p1, "database"    # Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    .line 104
    new-instance v0, Lccsanandroidx/work/impl/utils/Preferences;

    iget-object v1, p0, Lccsanandroidx/work/impl/WorkDatabaseMigrations$WorkMigration;->mContext:Lccsanandroid/content/Context;

    invoke-direct {v0, v1}, Lccsanandroidx/work/impl/utils/Preferences;-><init>(Lccsanandroid/content/Context;)V

    .line 105
    .local v0, "preferences":Lccsanandroidx/work/impl/utils/Preferences;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroidx/work/impl/utils/Preferences;->setNeedsReschedule(Z)V

    .line 106
    return-void
.end method
