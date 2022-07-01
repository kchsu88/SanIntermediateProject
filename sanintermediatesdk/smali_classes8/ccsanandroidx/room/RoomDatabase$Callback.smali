.class public abstract Lccsanandroidx/room/RoomDatabase$Callback;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/room/RoomDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    .line 1066
    return-void
.end method

.method public onDestructiveMigration(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    .line 1082
    return-void
.end method

.method public onOpen(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    .line 1074
    return-void
.end method
