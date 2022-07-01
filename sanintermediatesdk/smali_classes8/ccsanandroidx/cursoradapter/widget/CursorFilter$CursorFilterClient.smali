.class interface abstract Lccsanandroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;
.super Ljava/lang/Object;
.source "CursorFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/cursoradapter/widget/CursorFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "CursorFilterClient"
.end annotation


# virtual methods
.method public abstract changeCursor(Lccsanandroid/database/Cursor;)V
.end method

.method public abstract convertToString(Lccsanandroid/database/Cursor;)Ljava/lang/CharSequence;
.end method

.method public abstract getCursor()Lccsanandroid/database/Cursor;
.end method

.method public abstract runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Lccsanandroid/database/Cursor;
.end method
