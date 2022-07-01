.class public abstract Lccsanandroidx/cursoradapter/widget/CursorAdapter;
.super Lccsanandroid/widget/BaseAdapter;
.source "CursorAdapter.java"

# interfaces
.implements Lccsanandroid/widget/Filterable;
.implements Lccsanandroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;,
        Lccsanandroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;
    }
.end annotation


# static fields
.field public static final FLAG_AUTO_REQUERY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_REGISTER_CONTENT_OBSERVER:I = 0x2


# instance fields
.field protected mAutoRequery:Z

.field protected mChangeObserver:Lccsanandroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

.field protected mContext:Lccsanandroid/content/Context;

.field protected mCursor:Lccsanandroid/database/Cursor;

.field protected mCursorFilter:Lccsanandroidx/cursoradapter/widget/CursorFilter;

.field protected mDataSetObserver:Lccsanandroid/database/DataSetObserver;

.field protected mDataValid:Z

.field protected mFilterQueryProvider:Lccsanandroid/widget/FilterQueryProvider;

.field protected mRowIDColumn:I


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/database/Cursor;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "c"    # Lccsanandroid/database/Cursor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    invoke-direct {p0}, Lccsanandroid/widget/BaseAdapter;-><init>()V

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->init(Lccsanandroid/content/Context;Lccsanandroid/database/Cursor;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/database/Cursor;I)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "c"    # Lccsanandroid/database/Cursor;
    .param p3, "flags"    # I

    .line 163
    invoke-direct {p0}, Lccsanandroid/widget/BaseAdapter;-><init>()V

    .line 164
    invoke-virtual {p0, p1, p2, p3}, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->init(Lccsanandroid/content/Context;Lccsanandroid/database/Cursor;I)V

    .line 165
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/database/Cursor;Z)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "c"    # Lccsanandroid/database/Cursor;
    .param p3, "autoRequery"    # Z

    .line 150
    invoke-direct {p0}, Lccsanandroid/widget/BaseAdapter;-><init>()V

    .line 151
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->init(Lccsanandroid/content/Context;Lccsanandroid/database/Cursor;I)V

    .line 152
    return-void
.end method


# virtual methods
.method public abstract bindView(Lccsanandroid/view/View;Lccsanandroid/content/Context;Lccsanandroid/database/Cursor;)V
.end method

.method public changeCursor(Lccsanandroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Lccsanandroid/database/Cursor;

    .line 334
    invoke-virtual {p0, p1}, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->swapCursor(Lccsanandroid/database/Cursor;)Lccsanandroid/database/Cursor;

    move-result-object v0

    .line 335
    .local v0, "old":Lccsanandroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 336
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V

    .line 338
    :cond_0
    return-void
.end method

.method public convertToString(Lccsanandroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "cursor"    # Lccsanandroid/database/Cursor;

    .line 387
    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 216
    iget-boolean v0, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mCursor:Lccsanandroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 217
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v0

    return v0

    .line 219
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCursor()Lccsanandroid/database/Cursor;
    .locals 1

    .line 208
    iget-object v0, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mCursor:Lccsanandroid/database/Cursor;

    return-object v0
.end method

.method public getDropDownView(ILccsanandroid/view/View;Lccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Lccsanandroid/view/View;
    .param p3, "parent"    # Lccsanandroid/view/ViewGroup;

    .line 280
    iget-boolean v0, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mCursor:Lccsanandroid/database/Cursor;

    invoke-interface {v0, p1}, Lccsanandroid/database/Cursor;->moveToPosition(I)Z

    .line 283
    if-nez p2, :cond_0

    .line 284
    iget-object v0, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mCursor:Lccsanandroid/database/Cursor;

    invoke-virtual {p0, v0, v1, p3}, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->newDropDownView(Lccsanandroid/content/Context;Lccsanandroid/database/Cursor;Lccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object v0

    .local v0, "v":Lccsanandroid/view/View;
    goto :goto_0

    .line 286
    .end local v0    # "v":Lccsanandroid/view/View;
    :cond_0
    move-object v0, p2

    .line 288
    .restart local v0    # "v":Lccsanandroid/view/View;
    :goto_0
    iget-object v1, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mContext:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mCursor:Lccsanandroid/database/Cursor;

    invoke-virtual {p0, v0, v1, v2}, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->bindView(Lccsanandroid/view/View;Lccsanandroid/content/Context;Lccsanandroid/database/Cursor;)V

    .line 289
    return-object v0

    .line 291
    .end local v0    # "v":Lccsanandroid/view/View;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilter()Lccsanandroid/widget/Filter;
    .locals 1

    .line 426
    iget-object v0, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mCursorFilter:Lccsanandroidx/cursoradapter/widget/CursorFilter;

    if-nez v0, :cond_0

    .line 427
    new-instance v0, Lccsanandroidx/cursoradapter/widget/CursorFilter;

    invoke-direct {v0, p0}, Lccsanandroidx/cursoradapter/widget/CursorFilter;-><init>(Lccsanandroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;)V

    iput-object v0, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mCursorFilter:Lccsanandroidx/cursoradapter/widget/CursorFilter;

    .line 429
    :cond_0
    iget-object v0, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mCursorFilter:Lccsanandroidx/cursoradapter/widget/CursorFilter;

    return-object v0
.end method

.method public getFilterQueryProvider()Lccsanandroid/widget/FilterQueryProvider;
    .locals 1

    .line 442
    iget-object v0, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mFilterQueryProvider:Lccsanandroid/widget/FilterQueryProvider;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 228
    iget-boolean v0, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mCursor:Lccsanandroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 229
    invoke-interface {v0, p1}, Lccsanandroid/database/Cursor;->moveToPosition(I)Z

    .line 230
    iget-object v0, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mCursor:Lccsanandroid/database/Cursor;

    return-object v0

    .line 232
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "position"    # I

    .line 241
    iget-boolean v0, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mCursor:Lccsanandroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 242
    invoke-interface {v0, p1}, Lccsanandroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mCursor:Lccsanandroid/database/Cursor;

    iget v1, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mRowIDColumn:I

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0

    .line 245
    :cond_0
    return-wide v1

    .line 248
    :cond_1
    return-wide v1
.end method

.method public getView(ILccsanandroid/view/View;Lccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Lccsanandroid/view/View;
    .param p3, "parent"    # Lccsanandroid/view/ViewGroup;

    .line 262
    iget-boolean v0, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mCursor:Lccsanandroid/database/Cursor;

    invoke-interface {v0, p1}, Lccsanandroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    if-nez p2, :cond_0

    .line 270
    iget-object v0, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mCursor:Lccsanandroid/database/Cursor;

    invoke-virtual {p0, v0, v1, p3}, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->newView(Lccsanandroid/content/Context;Lccsanandroid/database/Cursor;Lccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object v0

    .local v0, "v":Lccsanandroid/view/View;
    goto :goto_0

    .line 272
    .end local v0    # "v":Lccsanandroid/view/View;
    :cond_0
    move-object v0, p2

    .line 274
    .restart local v0    # "v":Lccsanandroid/view/View;
    :goto_0
    iget-object v1, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mContext:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mCursor:Lccsanandroid/database/Cursor;

    invoke-virtual {p0, v0, v1, v2}, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->bindView(Lccsanandroid/view/View;Lccsanandroid/content/Context;Lccsanandroid/database/Cursor;)V

    .line 275
    return-object v0

    .line 266
    .end local v0    # "v":Lccsanandroid/view/View;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t move cursor to position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "this should only be called when the cursor is valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method init(Lccsanandroid/content/Context;Lccsanandroid/database/Cursor;I)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "c"    # Lccsanandroid/database/Cursor;
    .param p3, "flags"    # I

    .line 177
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 178
    or-int/lit8 p3, p3, 0x2

    .line 179
    iput-boolean v2, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mAutoRequery:Z

    goto :goto_0

    .line 181
    :cond_0
    iput-boolean v1, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mAutoRequery:Z

    .line 183
    :goto_0
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    move v0, v1

    .line 184
    .local v0, "cursorPresent":Z
    iput-object p2, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mCursor:Lccsanandroid/database/Cursor;

    .line 185
    iput-boolean v0, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    .line 186
    iput-object p1, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mContext:Lccsanandroid/content/Context;

    .line 187
    if-eqz v0, :cond_2

    const-string v1, "_id"

    invoke-interface {p2, v1}, Lccsanandroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :goto_1
    iput v1, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mRowIDColumn:I

    .line 188
    and-int/lit8 v1, p3, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 189
    new-instance v1, Lccsanandroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    invoke-direct {v1, p0}, Lccsanandroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;-><init>(Lccsanandroidx/cursoradapter/widget/CursorAdapter;)V

    iput-object v1, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mChangeObserver:Lccsanandroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    .line 190
    new-instance v1, Lccsanandroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;

    invoke-direct {v1, p0}, Lccsanandroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;-><init>(Lccsanandroidx/cursoradapter/widget/CursorAdapter;)V

    iput-object v1, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mDataSetObserver:Lccsanandroid/database/DataSetObserver;

    goto :goto_2

    .line 192
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mChangeObserver:Lccsanandroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    .line 193
    iput-object v1, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mDataSetObserver:Lccsanandroid/database/DataSetObserver;

    .line 196
    :goto_2
    if-eqz v0, :cond_5

    .line 197
    iget-object v1, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mChangeObserver:Lccsanandroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    if-eqz v1, :cond_4

    invoke-interface {p2, v1}, Lccsanandroid/database/Cursor;->registerContentObserver(Lccsanandroid/database/ContentObserver;)V

    .line 198
    :cond_4
    iget-object v1, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mDataSetObserver:Lccsanandroid/database/DataSetObserver;

    if-eqz v1, :cond_5

    invoke-interface {p2, v1}, Lccsanandroid/database/Cursor;->registerDataSetObserver(Lccsanandroid/database/DataSetObserver;)V

    .line 200
    :cond_5
    return-void
.end method

.method protected init(Lccsanandroid/content/Context;Lccsanandroid/database/Cursor;Z)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "c"    # Lccsanandroid/database/Cursor;
    .param p3, "autoRequery"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 173
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->init(Lccsanandroid/content/Context;Lccsanandroid/database/Cursor;I)V

    .line 174
    return-void
.end method

.method public newDropDownView(Lccsanandroid/content/Context;Lccsanandroid/database/Cursor;Lccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "cursor"    # Lccsanandroid/database/Cursor;
    .param p3, "parent"    # Lccsanandroid/view/ViewGroup;

    .line 314
    invoke-virtual {p0, p1, p2, p3}, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->newView(Lccsanandroid/content/Context;Lccsanandroid/database/Cursor;Lccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public abstract newView(Lccsanandroid/content/Context;Lccsanandroid/database/Cursor;Lccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;
.end method

.method protected onContentChanged()V
    .locals 1

    .line 469
    iget-boolean v0, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mAutoRequery:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mCursor:Lccsanandroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lccsanandroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    iget-object v0, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mCursor:Lccsanandroid/database/Cursor;

    invoke-interface {v0}, Lccsanandroid/database/Cursor;->requery()Z

    move-result v0

    iput-boolean v0, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    .line 473
    :cond_0
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Lccsanandroid/database/Cursor;
    .locals 1
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .line 417
    iget-object v0, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mFilterQueryProvider:Lccsanandroid/widget/FilterQueryProvider;

    if-eqz v0, :cond_0

    .line 418
    invoke-interface {v0, p1}, Lccsanandroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Lccsanandroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 421
    :cond_0
    iget-object v0, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mCursor:Lccsanandroid/database/Cursor;

    return-object v0
.end method

.method public setFilterQueryProvider(Lccsanandroid/widget/FilterQueryProvider;)V
    .locals 0
    .param p1, "filterQueryProvider"    # Lccsanandroid/widget/FilterQueryProvider;

    .line 458
    iput-object p1, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mFilterQueryProvider:Lccsanandroid/widget/FilterQueryProvider;

    .line 459
    return-void
.end method

.method public swapCursor(Lccsanandroid/database/Cursor;)Lccsanandroid/database/Cursor;
    .locals 2
    .param p1, "newCursor"    # Lccsanandroid/database/Cursor;

    .line 351
    iget-object v0, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mCursor:Lccsanandroid/database/Cursor;

    if-ne p1, v0, :cond_0

    .line 352
    const/4 v0, 0x0

    return-object v0

    .line 354
    :cond_0
    iget-object v0, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mCursor:Lccsanandroid/database/Cursor;

    .line 355
    .local v0, "oldCursor":Lccsanandroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 356
    iget-object v1, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mChangeObserver:Lccsanandroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->unregisterContentObserver(Lccsanandroid/database/ContentObserver;)V

    .line 357
    :cond_1
    iget-object v1, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mDataSetObserver:Lccsanandroid/database/DataSetObserver;

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->unregisterDataSetObserver(Lccsanandroid/database/DataSetObserver;)V

    .line 359
    :cond_2
    iput-object p1, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mCursor:Lccsanandroid/database/Cursor;

    .line 360
    if-eqz p1, :cond_5

    .line 361
    iget-object v1, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mChangeObserver:Lccsanandroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    if-eqz v1, :cond_3

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->registerContentObserver(Lccsanandroid/database/ContentObserver;)V

    .line 362
    :cond_3
    iget-object v1, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mDataSetObserver:Lccsanandroid/database/DataSetObserver;

    if-eqz v1, :cond_4

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->registerDataSetObserver(Lccsanandroid/database/DataSetObserver;)V

    .line 363
    :cond_4
    const-string v1, "_id"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mRowIDColumn:I

    .line 364
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    .line 366
    invoke-virtual {p0}, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 368
    :cond_5
    const/4 v1, -0x1

    iput v1, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mRowIDColumn:I

    .line 369
    const/4 v1, 0x0

    iput-boolean v1, p0, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    .line 371
    invoke-virtual {p0}, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->notifyDataSetInvalidated()V

    .line 373
    :goto_0
    return-object v0
.end method
