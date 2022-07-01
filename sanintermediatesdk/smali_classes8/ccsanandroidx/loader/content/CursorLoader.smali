.class public Lccsanandroidx/loader/content/CursorLoader;
.super Lccsanandroidx/loader/content/AsyncTaskLoader;
.source "CursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/loader/content/AsyncTaskLoader<",
        "Lccsanandroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field mCancellationSignal:Lccsanandroidx/core/os/CancellationSignal;

.field mCursor:Lccsanandroid/database/Cursor;

.field final mObserver:Lccsanandroidx/loader/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/loader/content/Loader<",
            "Lccsanandroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field mProjection:[Ljava/lang/String;

.field mSelection:Ljava/lang/String;

.field mSelectionArgs:[Ljava/lang/String;

.field mSortOrder:Ljava/lang/String;

.field mUri:Lccsanandroid/net/Uri;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 123
    invoke-direct {p0, p1}, Lccsanandroidx/loader/content/AsyncTaskLoader;-><init>(Lccsanandroid/content/Context;)V

    .line 124
    new-instance v0, Lccsanandroidx/loader/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Lccsanandroidx/loader/content/Loader$ForceLoadContentObserver;-><init>(Lccsanandroidx/loader/content/Loader;)V

    iput-object v0, p0, Lccsanandroidx/loader/content/CursorLoader;->mObserver:Lccsanandroidx/loader/content/Loader$ForceLoadContentObserver;

    .line 125
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "uri"    # Lccsanandroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;

    .line 136
    invoke-direct {p0, p1}, Lccsanandroidx/loader/content/AsyncTaskLoader;-><init>(Lccsanandroid/content/Context;)V

    .line 137
    new-instance v0, Lccsanandroidx/loader/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Lccsanandroidx/loader/content/Loader$ForceLoadContentObserver;-><init>(Lccsanandroidx/loader/content/Loader;)V

    iput-object v0, p0, Lccsanandroidx/loader/content/CursorLoader;->mObserver:Lccsanandroidx/loader/content/Loader$ForceLoadContentObserver;

    .line 138
    iput-object p2, p0, Lccsanandroidx/loader/content/CursorLoader;->mUri:Lccsanandroid/net/Uri;

    .line 139
    iput-object p3, p0, Lccsanandroidx/loader/content/CursorLoader;->mProjection:[Ljava/lang/String;

    .line 140
    iput-object p4, p0, Lccsanandroidx/loader/content/CursorLoader;->mSelection:Ljava/lang/String;

    .line 141
    iput-object p5, p0, Lccsanandroidx/loader/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 142
    iput-object p6, p0, Lccsanandroidx/loader/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    .line 143
    return-void
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .locals 1

    .line 86
    invoke-super {p0}, Lccsanandroidx/loader/content/AsyncTaskLoader;->cancelLoadInBackground()V

    .line 88
    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/loader/content/CursorLoader;->mCancellationSignal:Lccsanandroidx/core/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Lccsanandroidx/core/os/CancellationSignal;->cancel()V

    .line 92
    :cond_0
    monitor-exit p0

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deliverResult(Lccsanandroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Lccsanandroid/database/Cursor;

    .line 98
    invoke-virtual {p0}, Lccsanandroidx/loader/content/CursorLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    if-eqz p1, :cond_0

    .line 101
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V

    .line 103
    :cond_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lccsanandroidx/loader/content/CursorLoader;->mCursor:Lccsanandroid/database/Cursor;

    .line 106
    .local v0, "oldCursor":Lccsanandroid/database/Cursor;
    iput-object p1, p0, Lccsanandroidx/loader/content/CursorLoader;->mCursor:Lccsanandroid/database/Cursor;

    .line 108
    invoke-virtual {p0}, Lccsanandroidx/loader/content/CursorLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    invoke-super {p0, p1}, Lccsanandroidx/loader/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 112
    :cond_2
    if-eqz v0, :cond_3

    if-eq v0, p1, :cond_3

    invoke-interface {v0}, Lccsanandroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 113
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V

    .line 115
    :cond_3
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Lccsanandroid/database/Cursor;

    invoke-virtual {p0, p1}, Lccsanandroidx/loader/content/CursorLoader;->deliverResult(Lccsanandroid/database/Cursor;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 239
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroidx/loader/content/AsyncTaskLoader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 240
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUri="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lccsanandroidx/loader/content/CursorLoader;->mUri:Lccsanandroid/net/Uri;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 241
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mProjection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lccsanandroidx/loader/content/CursorLoader;->mProjection:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lccsanandroidx/loader/content/CursorLoader;->mSelection:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelectionArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lccsanandroidx/loader/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSortOrder="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lccsanandroidx/loader/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCursor="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lccsanandroidx/loader/content/CursorLoader;->mCursor:Lccsanandroid/database/Cursor;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 248
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lccsanandroidx/loader/content/CursorLoader;->mContentChanged:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 249
    return-void
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lccsanandroidx/loader/content/CursorLoader;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lccsanandroidx/loader/content/CursorLoader;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lccsanandroidx/loader/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lccsanandroidx/loader/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Lccsanandroid/net/Uri;
    .locals 1

    .line 193
    iget-object v0, p0, Lccsanandroidx/loader/content/CursorLoader;->mUri:Lccsanandroid/net/Uri;

    return-object v0
.end method

.method public loadInBackground()Lccsanandroid/database/Cursor;
    .locals 9

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lccsanandroidx/loader/content/CursorLoader;->isLoadInBackgroundCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    new-instance v0, Lccsanandroidx/core/os/CancellationSignal;

    invoke-direct {v0}, Lccsanandroidx/core/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lccsanandroidx/loader/content/CursorLoader;->mCancellationSignal:Lccsanandroidx/core/os/CancellationSignal;

    .line 61
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 63
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lccsanandroidx/loader/content/CursorLoader;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lccsanandroidx/loader/content/CursorLoader;->mUri:Lccsanandroid/net/Uri;

    iget-object v4, p0, Lccsanandroidx/loader/content/CursorLoader;->mProjection:[Ljava/lang/String;

    iget-object v5, p0, Lccsanandroidx/loader/content/CursorLoader;->mSelection:Ljava/lang/String;

    iget-object v6, p0, Lccsanandroidx/loader/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    iget-object v7, p0, Lccsanandroidx/loader/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    iget-object v8, p0, Lccsanandroidx/loader/content/CursorLoader;->mCancellationSignal:Lccsanandroidx/core/os/CancellationSignal;

    invoke-static/range {v2 .. v8}, Lccsanandroidx/core/content/ContentResolverCompat;->query(Lccsanandroid/content/ContentResolver;Lccsanandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lccsanandroidx/core/os/CancellationSignal;)Lccsanandroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    .local v1, "cursor":Lccsanandroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 69
    :try_start_2
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->getCount()I

    .line 70
    iget-object v2, p0, Lccsanandroidx/loader/content/CursorLoader;->mObserver:Lccsanandroidx/loader/content/Loader$ForceLoadContentObserver;

    invoke-interface {v1, v2}, Lccsanandroid/database/Cursor;->registerContentObserver(Lccsanandroid/database/ContentObserver;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    goto :goto_0

    .line 71
    :catch_0
    move-exception v2

    .line 72
    .local v2, "ex":Ljava/lang/RuntimeException;
    :try_start_3
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 73
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 76
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    nop

    .line 78
    monitor-enter p0

    .line 79
    :try_start_4
    iput-object v0, p0, Lccsanandroidx/loader/content/CursorLoader;->mCancellationSignal:Lccsanandroidx/core/os/CancellationSignal;

    .line 80
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 78
    .end local v1    # "cursor":Lccsanandroid/database/Cursor;
    :catchall_1
    move-exception v1

    monitor-enter p0

    .line 79
    :try_start_5
    iput-object v0, p0, Lccsanandroidx/loader/content/CursorLoader;->mCancellationSignal:Lccsanandroidx/core/os/CancellationSignal;

    .line 80
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 58
    :cond_1
    :try_start_7
    new-instance v0, Lccsanandroidx/core/os/OperationCanceledException;

    invoke-direct {v0}, Lccsanandroidx/core/os/OperationCanceledException;-><init>()V

    throw v0

    .line 61
    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lccsanandroidx/loader/content/CursorLoader;->loadInBackground()Lccsanandroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Lccsanandroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Lccsanandroid/database/Cursor;

    .line 173
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lccsanandroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V

    .line 176
    :cond_0
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Lccsanandroid/database/Cursor;

    invoke-virtual {p0, p1}, Lccsanandroidx/loader/content/CursorLoader;->onCanceled(Lccsanandroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .line 180
    invoke-super {p0}, Lccsanandroidx/loader/content/AsyncTaskLoader;->onReset()V

    .line 183
    invoke-virtual {p0}, Lccsanandroidx/loader/content/CursorLoader;->onStopLoading()V

    .line 185
    iget-object v0, p0, Lccsanandroidx/loader/content/CursorLoader;->mCursor:Lccsanandroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lccsanandroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lccsanandroidx/loader/content/CursorLoader;->mCursor:Lccsanandroid/database/Cursor;

    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V

    .line 188
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/loader/content/CursorLoader;->mCursor:Lccsanandroid/database/Cursor;

    .line 189
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .line 154
    iget-object v0, p0, Lccsanandroidx/loader/content/CursorLoader;->mCursor:Lccsanandroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0, v0}, Lccsanandroidx/loader/content/CursorLoader;->deliverResult(Lccsanandroid/database/Cursor;)V

    .line 157
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/loader/content/CursorLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsanandroidx/loader/content/CursorLoader;->mCursor:Lccsanandroid/database/Cursor;

    if-nez v0, :cond_2

    .line 158
    :cond_1
    invoke-virtual {p0}, Lccsanandroidx/loader/content/CursorLoader;->forceLoad()V

    .line 160
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 168
    invoke-virtual {p0}, Lccsanandroidx/loader/content/CursorLoader;->cancelLoad()Z

    .line 169
    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 0
    .param p1, "projection"    # [Ljava/lang/String;

    .line 206
    iput-object p1, p0, Lccsanandroidx/loader/content/CursorLoader;->mProjection:[Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 0
    .param p1, "selection"    # Ljava/lang/String;

    .line 215
    iput-object p1, p0, Lccsanandroidx/loader/content/CursorLoader;->mSelection:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setSelectionArgs([Ljava/lang/String;)V
    .locals 0
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .line 224
    iput-object p1, p0, Lccsanandroidx/loader/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 0
    .param p1, "sortOrder"    # Ljava/lang/String;

    .line 233
    iput-object p1, p0, Lccsanandroidx/loader/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setUri(Lccsanandroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Lccsanandroid/net/Uri;

    .line 197
    iput-object p1, p0, Lccsanandroidx/loader/content/CursorLoader;->mUri:Lccsanandroid/net/Uri;

    .line 198
    return-void
.end method
