.class public interface abstract Lccsancom/google/android/exoplayer2/database/DatabaseProvider;
.super Ljava/lang/Object;
.source "DatabaseProvider.java"


# static fields
.field public static final TABLE_PREFIX:Ljava/lang/String; = "ExoPlayer"


# virtual methods
.method public abstract getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;
.end method

.method public abstract getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;
.end method
