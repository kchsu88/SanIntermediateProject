.class Lccsanandroidx/cursoradapter/widget/CursorFilter;
.super Lccsanandroid/widget/Filter;
.source "CursorFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;
    }
.end annotation


# instance fields
.field mClient:Lccsanandroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;


# direct methods
.method constructor <init>(Lccsanandroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;)V
    .locals 0
    .param p1, "client"    # Lccsanandroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;

    .line 39
    invoke-direct {p0}, Lccsanandroid/widget/Filter;-><init>()V

    .line 40
    iput-object p1, p0, Lccsanandroidx/cursoradapter/widget/CursorFilter;->mClient:Lccsanandroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;

    .line 41
    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "resultValue"    # Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lccsanandroidx/cursoradapter/widget/CursorFilter;->mClient:Lccsanandroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;

    move-object v1, p1

    check-cast v1, Lccsanandroid/database/Cursor;

    invoke-interface {v0, v1}, Lccsanandroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;->convertToString(Lccsanandroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Lccsanandroid/widget/Filter$FilterResults;
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .line 50
    iget-object v0, p0, Lccsanandroidx/cursoradapter/widget/CursorFilter;->mClient:Lccsanandroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;

    invoke-interface {v0, p1}, Lccsanandroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;->runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Lccsanandroid/database/Cursor;

    move-result-object v0

    .line 52
    .local v0, "cursor":Lccsanandroid/database/Cursor;
    new-instance v1, Lccsanandroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Lccsanandroid/widget/Filter$FilterResults;-><init>()V

    .line 53
    .local v1, "results":Lccsanandroid/widget/Filter$FilterResults;
    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, v1, Lccsanandroid/widget/Filter$FilterResults;->count:I

    .line 55
    iput-object v0, v1, Lccsanandroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_0

    .line 57
    :cond_0
    const/4 v2, 0x0

    iput v2, v1, Lccsanandroid/widget/Filter$FilterResults;->count:I

    .line 58
    const/4 v2, 0x0

    iput-object v2, v1, Lccsanandroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 60
    :goto_0
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Lccsanandroid/widget/Filter$FilterResults;)V
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Lccsanandroid/widget/Filter$FilterResults;

    .line 65
    iget-object v0, p0, Lccsanandroidx/cursoradapter/widget/CursorFilter;->mClient:Lccsanandroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;

    invoke-interface {v0}, Lccsanandroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;->getCursor()Lccsanandroid/database/Cursor;

    move-result-object v0

    .line 67
    .local v0, "oldCursor":Lccsanandroid/database/Cursor;
    iget-object v1, p2, Lccsanandroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lccsanandroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eq v1, v0, :cond_0

    .line 68
    iget-object v1, p0, Lccsanandroidx/cursoradapter/widget/CursorFilter;->mClient:Lccsanandroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;

    iget-object v2, p2, Lccsanandroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v2, Lccsanandroid/database/Cursor;

    invoke-interface {v1, v2}, Lccsanandroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;->changeCursor(Lccsanandroid/database/Cursor;)V

    .line 70
    :cond_0
    return-void
.end method
