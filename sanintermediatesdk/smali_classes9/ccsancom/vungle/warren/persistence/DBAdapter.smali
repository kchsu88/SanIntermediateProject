.class public interface abstract Lccsancom/vungle/warren/persistence/DBAdapter;
.super Ljava/lang/Object;
.source "DBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract fromContentValues(Lccsanandroid/content/ContentValues;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/ContentValues;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract tableName()Ljava/lang/String;
.end method

.method public abstract toContentValues(Ljava/lang/Object;)Lccsanandroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lccsanandroid/content/ContentValues;"
        }
    .end annotation
.end method
