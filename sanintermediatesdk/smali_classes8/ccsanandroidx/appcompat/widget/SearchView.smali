.class public Lccsanandroidx/appcompat/widget/SearchView;
.super Lccsanandroidx/appcompat/widget/LinearLayoutCompat;
.source "SearchView.java"

# interfaces
.implements Lccsanandroidx/appcompat/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;,
        Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;,
        Lccsanandroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;,
        Lccsanandroidx/appcompat/widget/SearchView$SavedState;,
        Lccsanandroidx/appcompat/widget/SearchView$OnSuggestionListener;,
        Lccsanandroidx/appcompat/widget/SearchView$OnCloseListener;,
        Lccsanandroidx/appcompat/widget/SearchView$OnQueryTextListener;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field static final LOG_TAG:Ljava/lang/String; = "SearchView"

.field static final PRE_API_29_HIDDEN_METHOD_INVOKER:Lccsanandroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;


# instance fields
.field private mAppSearchData:Lccsanandroid/os/Bundle;

.field private mClearingFocus:Z

.field final mCloseButton:Lccsanandroid/widget/ImageView;

.field private final mCollapsedIcon:Lccsanandroid/widget/ImageView;

.field private mCollapsedImeOptions:I

.field private final mDefaultQueryHint:Ljava/lang/CharSequence;

.field private final mDropDownAnchor:Lccsanandroid/view/View;

.field private mExpandedInActionView:Z

.field final mGoButton:Lccsanandroid/widget/ImageView;

.field private mIconified:Z

.field private mIconifiedByDefault:Z

.field private mMaxWidth:I

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private final mOnClickListener:Lccsanandroid/view/View$OnClickListener;

.field private mOnCloseListener:Lccsanandroidx/appcompat/widget/SearchView$OnCloseListener;

.field private final mOnEditorActionListener:Lccsanandroid/widget/TextView$OnEditorActionListener;

.field private final mOnItemClickListener:Lccsanandroid/widget/AdapterView$OnItemClickListener;

.field private final mOnItemSelectedListener:Lccsanandroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnQueryChangeListener:Lccsanandroidx/appcompat/widget/SearchView$OnQueryTextListener;

.field mOnQueryTextFocusChangeListener:Lccsanandroid/view/View$OnFocusChangeListener;

.field private mOnSearchClickListener:Lccsanandroid/view/View$OnClickListener;

.field private mOnSuggestionListener:Lccsanandroidx/appcompat/widget/SearchView$OnSuggestionListener;

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Lccsanandroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHint:Ljava/lang/CharSequence;

.field private mQueryRefinement:Z

.field private mReleaseCursorRunnable:Ljava/lang/Runnable;

.field final mSearchButton:Lccsanandroid/widget/ImageView;

.field private final mSearchEditFrame:Lccsanandroid/view/View;

.field private final mSearchHintIcon:Lccsanandroid/graphics/drawable/Drawable;

.field private final mSearchPlate:Lccsanandroid/view/View;

.field final mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

.field private mSearchSrcTextViewBounds:Lccsanandroid/graphics/Rect;

.field private mSearchSrtTextViewBoundsExpanded:Lccsanandroid/graphics/Rect;

.field mSearchable:Lccsanandroid/app/SearchableInfo;

.field private final mSubmitArea:Lccsanandroid/view/View;

.field private mSubmitButtonEnabled:Z

.field private final mSuggestionCommitIconResId:I

.field private final mSuggestionRowLayout:I

.field mSuggestionsAdapter:Lccsanandroidx/cursoradapter/widget/CursorAdapter;

.field private mTemp:[I

.field private mTemp2:[I

.field mTextKeyListener:Lccsanandroid/view/View$OnKeyListener;

.field private mTextWatcher:Lccsanandroid/text/TextWatcher;

.field private mTouchDelegate:Lccsanandroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;

.field private final mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mUserQuery:Ljava/lang/CharSequence;

.field private final mVoiceAppSearchIntent:Lccsanandroid/content/Intent;

.field final mVoiceButton:Lccsanandroid/widget/ImageView;

.field private mVoiceButtonEnabled:Z

.field private final mVoiceWebSearchIntent:Lccsanandroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 181
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    new-instance v0, Lccsanandroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;

    invoke-direct {v0}, Lccsanandroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lccsanandroidx/appcompat/widget/SearchView;->PRE_API_29_HIDDEN_METHOD_INVOKER:Lccsanandroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;

    .line 180
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 272
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/appcompat/widget/SearchView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 273
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 276
    sget v0, Lccsanandroidx/appcompat/R$attr;->searchViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lccsanandroidx/appcompat/widget/SearchView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 277
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 17
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 280
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p3}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 136
    new-instance v1, Lccsanandroid/graphics/Rect;

    invoke-direct {v1}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextViewBounds:Lccsanandroid/graphics/Rect;

    .line 137
    new-instance v1, Lccsanandroid/graphics/Rect;

    invoke-direct {v1}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Lccsanandroid/graphics/Rect;

    .line 138
    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, v0, Lccsanandroidx/appcompat/widget/SearchView;->mTemp:[I

    .line 139
    new-array v1, v1, [I

    iput-object v1, v0, Lccsanandroidx/appcompat/widget/SearchView;->mTemp2:[I

    .line 183
    new-instance v1, Lccsanandroidx/appcompat/widget/SearchView$1;

    invoke-direct {v1, v0}, Lccsanandroidx/appcompat/widget/SearchView$1;-><init>(Lccsanandroidx/appcompat/widget/SearchView;)V

    iput-object v1, v0, Lccsanandroidx/appcompat/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    .line 190
    new-instance v1, Lccsanandroidx/appcompat/widget/SearchView$2;

    invoke-direct {v1, v0}, Lccsanandroidx/appcompat/widget/SearchView$2;-><init>(Lccsanandroidx/appcompat/widget/SearchView;)V

    iput-object v1, v0, Lccsanandroidx/appcompat/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    .line 201
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, v0, Lccsanandroidx/appcompat/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 981
    new-instance v1, Lccsanandroidx/appcompat/widget/SearchView$5;

    invoke-direct {v1, v0}, Lccsanandroidx/appcompat/widget/SearchView$5;-><init>(Lccsanandroidx/appcompat/widget/SearchView;)V

    iput-object v1, v0, Lccsanandroidx/appcompat/widget/SearchView;->mOnClickListener:Lccsanandroid/view/View$OnClickListener;

    .line 1003
    new-instance v2, Lccsanandroidx/appcompat/widget/SearchView$6;

    invoke-direct {v2, v0}, Lccsanandroidx/appcompat/widget/SearchView$6;-><init>(Lccsanandroidx/appcompat/widget/SearchView;)V

    iput-object v2, v0, Lccsanandroidx/appcompat/widget/SearchView;->mTextKeyListener:Lccsanandroid/view/View$OnKeyListener;

    .line 1166
    new-instance v2, Lccsanandroidx/appcompat/widget/SearchView$7;

    invoke-direct {v2, v0}, Lccsanandroidx/appcompat/widget/SearchView$7;-><init>(Lccsanandroidx/appcompat/widget/SearchView;)V

    iput-object v2, v0, Lccsanandroidx/appcompat/widget/SearchView;->mOnEditorActionListener:Lccsanandroid/widget/TextView$OnEditorActionListener;

    .line 1412
    new-instance v3, Lccsanandroidx/appcompat/widget/SearchView$8;

    invoke-direct {v3, v0}, Lccsanandroidx/appcompat/widget/SearchView$8;-><init>(Lccsanandroidx/appcompat/widget/SearchView;)V

    iput-object v3, v0, Lccsanandroidx/appcompat/widget/SearchView;->mOnItemClickListener:Lccsanandroid/widget/AdapterView$OnItemClickListener;

    .line 1424
    new-instance v4, Lccsanandroidx/appcompat/widget/SearchView$9;

    invoke-direct {v4, v0}, Lccsanandroidx/appcompat/widget/SearchView$9;-><init>(Lccsanandroidx/appcompat/widget/SearchView;)V

    iput-object v4, v0, Lccsanandroidx/appcompat/widget/SearchView;->mOnItemSelectedListener:Lccsanandroid/widget/AdapterView$OnItemSelectedListener;

    .line 1718
    new-instance v5, Lccsanandroidx/appcompat/widget/SearchView$10;

    invoke-direct {v5, v0}, Lccsanandroidx/appcompat/widget/SearchView$10;-><init>(Lccsanandroidx/appcompat/widget/SearchView;)V

    iput-object v5, v0, Lccsanandroidx/appcompat/widget/SearchView;->mTextWatcher:Lccsanandroid/text/TextWatcher;

    .line 282
    sget-object v5, Lccsanandroidx/appcompat/R$styleable;->SearchView:[I

    const/4 v6, 0x0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-static {v7, v8, v5, v9, v6}, Lccsanandroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III)Lccsanandroidx/appcompat/widget/TintTypedArray;

    move-result-object v5

    .line 285
    .local v5, "a":Lccsanandroidx/appcompat/widget/TintTypedArray;
    invoke-static/range {p1 .. p1}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v10

    .line 286
    .local v10, "inflater":Lccsanandroid/view/LayoutInflater;
    sget v11, Lccsanandroidx/appcompat/R$styleable;->SearchView_layout:I

    sget v12, Lccsanandroidx/appcompat/R$layout;->abc_search_view:I

    invoke-virtual {v5, v11, v12}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v11

    .line 288
    .local v11, "layoutResId":I
    const/4 v12, 0x1

    invoke-virtual {v10, v11, v0, v12}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    .line 290
    sget v13, Lccsanandroidx/appcompat/R$id;->search_src_text:I

    invoke-virtual {v0, v13}, Lccsanandroidx/appcompat/widget/SearchView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v13

    check-cast v13, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iput-object v13, v0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 291
    invoke-virtual {v13, v0}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSearchView(Lccsanandroidx/appcompat/widget/SearchView;)V

    .line 293
    sget v14, Lccsanandroidx/appcompat/R$id;->search_edit_frame:I

    invoke-virtual {v0, v14}, Lccsanandroidx/appcompat/widget/SearchView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v14

    iput-object v14, v0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchEditFrame:Lccsanandroid/view/View;

    .line 294
    sget v14, Lccsanandroidx/appcompat/R$id;->search_plate:I

    invoke-virtual {v0, v14}, Lccsanandroidx/appcompat/widget/SearchView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v14

    iput-object v14, v0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchPlate:Lccsanandroid/view/View;

    .line 295
    sget v15, Lccsanandroidx/appcompat/R$id;->submit_area:I

    invoke-virtual {v0, v15}, Lccsanandroidx/appcompat/widget/SearchView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v15

    iput-object v15, v0, Lccsanandroidx/appcompat/widget/SearchView;->mSubmitArea:Lccsanandroid/view/View;

    .line 296
    sget v12, Lccsanandroidx/appcompat/R$id;->search_button:I

    invoke-virtual {v0, v12}, Lccsanandroidx/appcompat/widget/SearchView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v12

    check-cast v12, Lccsanandroid/widget/ImageView;

    iput-object v12, v0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchButton:Lccsanandroid/widget/ImageView;

    .line 297
    sget v6, Lccsanandroidx/appcompat/R$id;->search_go_btn:I

    invoke-virtual {v0, v6}, Lccsanandroidx/appcompat/widget/SearchView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v6

    check-cast v6, Lccsanandroid/widget/ImageView;

    iput-object v6, v0, Lccsanandroidx/appcompat/widget/SearchView;->mGoButton:Lccsanandroid/widget/ImageView;

    .line 298
    sget v7, Lccsanandroidx/appcompat/R$id;->search_close_btn:I

    invoke-virtual {v0, v7}, Lccsanandroidx/appcompat/widget/SearchView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v7

    check-cast v7, Lccsanandroid/widget/ImageView;

    iput-object v7, v0, Lccsanandroidx/appcompat/widget/SearchView;->mCloseButton:Lccsanandroid/widget/ImageView;

    .line 299
    sget v8, Lccsanandroidx/appcompat/R$id;->search_voice_btn:I

    invoke-virtual {v0, v8}, Lccsanandroidx/appcompat/widget/SearchView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v8

    check-cast v8, Lccsanandroid/widget/ImageView;

    iput-object v8, v0, Lccsanandroidx/appcompat/widget/SearchView;->mVoiceButton:Lccsanandroid/widget/ImageView;

    .line 300
    sget v9, Lccsanandroidx/appcompat/R$id;->search_mag_icon:I

    invoke-virtual {v0, v9}, Lccsanandroidx/appcompat/widget/SearchView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v9

    check-cast v9, Lccsanandroid/widget/ImageView;

    iput-object v9, v0, Lccsanandroidx/appcompat/widget/SearchView;->mCollapsedIcon:Lccsanandroid/widget/ImageView;

    .line 303
    move-object/from16 v16, v10

    .end local v10    # "inflater":Lccsanandroid/view/LayoutInflater;
    .local v16, "inflater":Lccsanandroid/view/LayoutInflater;
    sget v10, Lccsanandroidx/appcompat/R$styleable;->SearchView_queryBackground:I

    .line 304
    invoke-virtual {v5, v10}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 303
    invoke-static {v14, v10}, Lccsanandroidx/core/view/ViewCompat;->setBackground(Lccsanandroid/view/View;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 305
    sget v10, Lccsanandroidx/appcompat/R$styleable;->SearchView_submitBackground:I

    .line 306
    invoke-virtual {v5, v10}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 305
    invoke-static {v15, v10}, Lccsanandroidx/core/view/ViewCompat;->setBackground(Lccsanandroid/view/View;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 307
    sget v10, Lccsanandroidx/appcompat/R$styleable;->SearchView_searchIcon:I

    invoke-virtual {v5, v10}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v12, v10}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 308
    sget v10, Lccsanandroidx/appcompat/R$styleable;->SearchView_goIcon:I

    invoke-virtual {v5, v10}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v6, v10}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 309
    sget v10, Lccsanandroidx/appcompat/R$styleable;->SearchView_closeIcon:I

    invoke-virtual {v5, v10}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v7, v10}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 310
    sget v10, Lccsanandroidx/appcompat/R$styleable;->SearchView_voiceIcon:I

    invoke-virtual {v5, v10}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v8, v10}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 311
    sget v10, Lccsanandroidx/appcompat/R$styleable;->SearchView_searchIcon:I

    invoke-virtual {v5, v10}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 313
    sget v9, Lccsanandroidx/appcompat/R$styleable;->SearchView_searchHintIcon:I

    invoke-virtual {v5, v9}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchHintIcon:Lccsanandroid/graphics/drawable/Drawable;

    .line 315
    nop

    .line 316
    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/appcompat/widget/SearchView;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v9

    sget v10, Lccsanandroidx/appcompat/R$string;->abc_searchview_description_search:I

    invoke-virtual {v9, v10}, Lccsanandroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 315
    invoke-static {v12, v9}, Lccsanandroidx/appcompat/widget/TooltipCompat;->setTooltipText(Lccsanandroid/view/View;Ljava/lang/CharSequence;)V

    .line 319
    sget v9, Lccsanandroidx/appcompat/R$styleable;->SearchView_suggestionRowLayout:I

    sget v10, Lccsanandroidx/appcompat/R$layout;->abc_search_dropdown_item_icons_2line:I

    invoke-virtual {v5, v9, v10}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v0, Lccsanandroidx/appcompat/widget/SearchView;->mSuggestionRowLayout:I

    .line 321
    sget v9, Lccsanandroidx/appcompat/R$styleable;->SearchView_commitIcon:I

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v0, Lccsanandroidx/appcompat/widget/SearchView;->mSuggestionCommitIconResId:I

    .line 323
    invoke-virtual {v12, v1}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 324
    invoke-virtual {v7, v1}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 325
    invoke-virtual {v6, v1}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 326
    invoke-virtual {v8, v1}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 327
    invoke-virtual {v13, v1}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 329
    iget-object v1, v0, Lccsanandroidx/appcompat/widget/SearchView;->mTextWatcher:Lccsanandroid/text/TextWatcher;

    invoke-virtual {v13, v1}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->addTextChangedListener(Lccsanandroid/text/TextWatcher;)V

    .line 330
    invoke-virtual {v13, v2}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnEditorActionListener(Lccsanandroid/widget/TextView$OnEditorActionListener;)V

    .line 331
    invoke-virtual {v13, v3}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnItemClickListener(Lccsanandroid/widget/AdapterView$OnItemClickListener;)V

    .line 332
    invoke-virtual {v13, v4}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnItemSelectedListener(Lccsanandroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 333
    iget-object v1, v0, Lccsanandroidx/appcompat/widget/SearchView;->mTextKeyListener:Lccsanandroid/view/View$OnKeyListener;

    invoke-virtual {v13, v1}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnKeyListener(Lccsanandroid/view/View$OnKeyListener;)V

    .line 336
    new-instance v1, Lccsanandroidx/appcompat/widget/SearchView$3;

    invoke-direct {v1, v0}, Lccsanandroidx/appcompat/widget/SearchView$3;-><init>(Lccsanandroidx/appcompat/widget/SearchView;)V

    invoke-virtual {v13, v1}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Lccsanandroid/view/View$OnFocusChangeListener;)V

    .line 344
    sget v1, Lccsanandroidx/appcompat/R$styleable;->SearchView_iconifiedByDefault:I

    const/4 v2, 0x1

    invoke-virtual {v5, v1, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 346
    sget v1, Lccsanandroidx/appcompat/R$styleable;->SearchView_android_maxWidth:I

    const/4 v2, -0x1

    invoke-virtual {v5, v1, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 347
    .local v1, "maxWidth":I
    if-eq v1, v2, :cond_0

    .line 348
    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/SearchView;->setMaxWidth(I)V

    .line 351
    :cond_0
    sget v3, Lccsanandroidx/appcompat/R$styleable;->SearchView_defaultQueryHint:I

    invoke-virtual {v5, v3}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Lccsanandroidx/appcompat/widget/SearchView;->mDefaultQueryHint:Ljava/lang/CharSequence;

    .line 352
    sget v3, Lccsanandroidx/appcompat/R$styleable;->SearchView_queryHint:I

    invoke-virtual {v5, v3}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Lccsanandroidx/appcompat/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 354
    sget v3, Lccsanandroidx/appcompat/R$styleable;->SearchView_android_imeOptions:I

    invoke-virtual {v5, v3, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v3

    .line 355
    .local v3, "imeOptions":I
    if-eq v3, v2, :cond_1

    .line 356
    invoke-virtual {v0, v3}, Lccsanandroidx/appcompat/widget/SearchView;->setImeOptions(I)V

    .line 359
    :cond_1
    sget v4, Lccsanandroidx/appcompat/R$styleable;->SearchView_android_inputType:I

    invoke-virtual {v5, v4, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v4

    .line 360
    .local v4, "inputType":I
    if-eq v4, v2, :cond_2

    .line 361
    invoke-virtual {v0, v4}, Lccsanandroidx/appcompat/widget/SearchView;->setInputType(I)V

    .line 364
    :cond_2
    const/4 v2, 0x1

    .line 365
    .local v2, "focusable":Z
    sget v6, Lccsanandroidx/appcompat/R$styleable;->SearchView_android_focusable:I

    invoke-virtual {v5, v6, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 366
    invoke-virtual {v0, v2}, Lccsanandroidx/appcompat/widget/SearchView;->setFocusable(Z)V

    .line 368
    invoke-virtual {v5}, Lccsanandroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 371
    new-instance v6, Lccsanandroid/content/Intent;

    const-string v7, "android.speech.action.WEB_SEARCH"

    invoke-direct {v6, v7}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v6, v0, Lccsanandroidx/appcompat/widget/SearchView;->mVoiceWebSearchIntent:Lccsanandroid/content/Intent;

    .line 372
    const/high16 v7, 0x10000000

    invoke-virtual {v6, v7}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 373
    const-string v8, "android.speech.extra.LANGUAGE_MODEL"

    const-string/jumbo v9, "web_search"

    invoke-virtual {v6, v8, v9}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 376
    new-instance v6, Lccsanandroid/content/Intent;

    const-string v8, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v6, v8}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v6, v0, Lccsanandroidx/appcompat/widget/SearchView;->mVoiceAppSearchIntent:Lccsanandroid/content/Intent;

    .line 377
    invoke-virtual {v6, v7}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 379
    invoke-virtual {v13}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->getDropDownAnchor()I

    move-result v6

    invoke-virtual {v0, v6}, Lccsanandroidx/appcompat/widget/SearchView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v6

    iput-object v6, v0, Lccsanandroidx/appcompat/widget/SearchView;->mDropDownAnchor:Lccsanandroid/view/View;

    .line 380
    if-eqz v6, :cond_3

    .line 381
    new-instance v7, Lccsanandroidx/appcompat/widget/SearchView$4;

    invoke-direct {v7, v0}, Lccsanandroidx/appcompat/widget/SearchView$4;-><init>(Lccsanandroidx/appcompat/widget/SearchView;)V

    invoke-virtual {v6, v7}, Lccsanandroid/view/View;->addOnLayoutChangeListener(Lccsanandroid/view/View$OnLayoutChangeListener;)V

    .line 390
    :cond_3
    iget-boolean v6, v0, Lccsanandroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    invoke-direct {v0, v6}, Lccsanandroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    .line 391
    invoke-direct/range {p0 .. p0}, Lccsanandroidx/appcompat/widget/SearchView;->updateQueryHint()V

    .line 392
    return-void
.end method

.method private createIntent(Ljava/lang/String;Lccsanandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lccsanandroid/content/Intent;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Lccsanandroid/net/Uri;
    .param p3, "extraData"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "actionKey"    # I
    .param p6, "actionMsg"    # Ljava/lang/String;

    .line 1542
    new-instance v0, Lccsanandroid/content/Intent;

    invoke-direct {v0, p1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1543
    .local v0, "intent":Lccsanandroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 1547
    if-eqz p2, :cond_0

    .line 1548
    invoke-virtual {v0, p2}, Lccsanandroid/content/Intent;->setData(Lccsanandroid/net/Uri;)Lccsanandroid/content/Intent;

    .line 1550
    :cond_0
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    const-string/jumbo v2, "user_query"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Lccsanandroid/content/Intent;

    .line 1551
    if-eqz p4, :cond_1

    .line 1552
    const-string v1, "query"

    invoke-virtual {v0, v1, p4}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 1554
    :cond_1
    if-eqz p3, :cond_2

    .line 1555
    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1, p3}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 1557
    :cond_2
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mAppSearchData:Lccsanandroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 1558
    const-string v2, "app_data"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Lccsanandroid/os/Bundle;)Lccsanandroid/content/Intent;

    .line 1560
    :cond_3
    if-eqz p5, :cond_4

    .line 1561
    const-string v1, "action_key"

    invoke-virtual {v0, v1, p5}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;I)Lccsanandroid/content/Intent;

    .line 1562
    const-string v1, "action_msg"

    invoke-virtual {v0, v1, p6}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 1564
    :cond_4
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchable:Lccsanandroid/app/SearchableInfo;

    invoke-virtual {v1}, Lccsanandroid/app/SearchableInfo;->getSearchActivity()Lccsanandroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->setComponent(Lccsanandroid/content/ComponentName;)Lccsanandroid/content/Intent;

    .line 1565
    return-object v0
.end method

.method private createIntentFromSuggestion(Lccsanandroid/database/Cursor;ILjava/lang/String;)Lccsanandroid/content/Intent;
    .locals 10
    .param p1, "c"    # Lccsanandroid/database/Cursor;
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .line 1661
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "suggest_intent_action"

    invoke-static {p1, v1}, Lccsanandroidx/appcompat/widget/SuggestionsAdapter;->getColumnString(Lccsanandroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1663
    .local v1, "action":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1664
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchable:Lccsanandroid/app/SearchableInfo;

    invoke-virtual {v2}, Lccsanandroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1666
    :cond_0
    if-nez v1, :cond_1

    .line 1667
    const-string v2, "android.intent.action.SEARCH"

    move-object v1, v2

    .line 1671
    :cond_1
    const-string/jumbo v2, "suggest_intent_data"

    invoke-static {p1, v2}, Lccsanandroidx/appcompat/widget/SuggestionsAdapter;->getColumnString(Lccsanandroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1672
    .local v2, "data":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 1673
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchable:Lccsanandroid/app/SearchableInfo;

    invoke-virtual {v3}, Lccsanandroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1676
    :cond_2
    if-eqz v2, :cond_3

    .line 1677
    const-string/jumbo v3, "suggest_intent_data_id"

    invoke-static {p1, v3}, Lccsanandroidx/appcompat/widget/SuggestionsAdapter;->getColumnString(Lccsanandroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1678
    .local v3, "id":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 1679
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lccsanandroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    move-object v9, v2

    goto :goto_0

    .line 1682
    .end local v3    # "id":Ljava/lang/String;
    :cond_3
    move-object v9, v2

    .end local v2    # "data":Ljava/lang/String;
    .local v9, "data":Ljava/lang/String;
    :goto_0
    if-nez v9, :cond_4

    move-object v4, v0

    goto :goto_1

    :cond_4
    invoke-static {v9}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v2

    move-object v4, v2

    .line 1684
    .local v4, "dataUri":Lccsanandroid/net/Uri;
    :goto_1
    const-string/jumbo v2, "suggest_intent_query"

    invoke-static {p1, v2}, Lccsanandroidx/appcompat/widget/SuggestionsAdapter;->getColumnString(Lccsanandroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1685
    .local v6, "query":Ljava/lang/String;
    const-string/jumbo v2, "suggest_intent_extra_data"

    invoke-static {p1, v2}, Lccsanandroidx/appcompat/widget/SuggestionsAdapter;->getColumnString(Lccsanandroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1687
    .local v5, "extraData":Ljava/lang/String;
    move-object v2, p0

    move-object v3, v1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lccsanandroidx/appcompat/widget/SearchView;->createIntent(Ljava/lang/String;Lccsanandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1688
    .end local v1    # "action":Ljava/lang/String;
    .end local v4    # "dataUri":Lccsanandroid/net/Uri;
    .end local v5    # "extraData":Ljava/lang/String;
    .end local v6    # "query":Ljava/lang/String;
    .end local v9    # "data":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1691
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->getPosition()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1694
    .local v2, "rowNum":I
    goto :goto_2

    .line 1692
    .end local v2    # "rowNum":I
    :catch_1
    move-exception v2

    .line 1693
    .local v2, "e2":Ljava/lang/RuntimeException;
    const/4 v3, -0x1

    move v2, v3

    .line 1695
    .local v2, "rowNum":I
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Search suggestions cursor at row "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " returned exception."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SearchView"

    invoke-static {v4, v3, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1697
    return-object v0
.end method

.method private createVoiceAppSearchIntent(Lccsanandroid/content/Intent;Lccsanandroid/app/SearchableInfo;)Lccsanandroid/content/Intent;
    .locals 12
    .param p1, "baseIntent"    # Lccsanandroid/content/Intent;
    .param p2, "searchable"    # Lccsanandroid/app/SearchableInfo;

    .line 1587
    invoke-virtual {p2}, Lccsanandroid/app/SearchableInfo;->getSearchActivity()Lccsanandroid/content/ComponentName;

    move-result-object v0

    .line 1592
    .local v0, "searchActivity":Lccsanandroid/content/ComponentName;
    new-instance v1, Lccsanandroid/content/Intent;

    const-string v2, "android.intent.action.SEARCH"

    invoke-direct {v1, v2}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1593
    .local v1, "queryIntent":Lccsanandroid/content/Intent;
    invoke-virtual {v1, v0}, Lccsanandroid/content/Intent;->setComponent(Lccsanandroid/content/ComponentName;)Lccsanandroid/content/Intent;

    .line 1594
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SearchView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v1, v4}, Lccsanandroid/app/PendingIntent;->getActivity(Lccsanandroid/content/Context;ILccsanandroid/content/Intent;I)Lccsanandroid/app/PendingIntent;

    move-result-object v2

    .line 1601
    .local v2, "pending":Lccsanandroid/app/PendingIntent;
    new-instance v3, Lccsanandroid/os/Bundle;

    invoke-direct {v3}, Lccsanandroid/os/Bundle;-><init>()V

    .line 1602
    .local v3, "queryExtras":Lccsanandroid/os/Bundle;
    iget-object v4, p0, Lccsanandroidx/appcompat/widget/SearchView;->mAppSearchData:Lccsanandroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 1603
    const-string v5, "app_data"

    invoke-virtual {v3, v5, v4}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 1609
    :cond_0
    new-instance v4, Lccsanandroid/content/Intent;

    invoke-direct {v4, p1}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Intent;)V

    .line 1612
    .local v4, "voiceIntent":Lccsanandroid/content/Intent;
    const-string v5, "free_form"

    .line 1613
    .local v5, "languageModel":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1614
    .local v6, "prompt":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1615
    .local v7, "language":Ljava/lang/String;
    const/4 v8, 0x1

    .line 1617
    .local v8, "maxResults":I
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SearchView;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v9

    .line 1618
    .local v9, "resources":Lccsanandroid/content/res/Resources;
    invoke-virtual {p2}, Lccsanandroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    if-eqz v10, :cond_1

    .line 1619
    invoke-virtual {p2}, Lccsanandroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    invoke-virtual {v9, v10}, Lccsanandroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1621
    :cond_1
    invoke-virtual {p2}, Lccsanandroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    if-eqz v10, :cond_2

    .line 1622
    invoke-virtual {p2}, Lccsanandroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    invoke-virtual {v9, v10}, Lccsanandroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1624
    :cond_2
    invoke-virtual {p2}, Lccsanandroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    if-eqz v10, :cond_3

    .line 1625
    invoke-virtual {p2}, Lccsanandroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    invoke-virtual {v9, v10}, Lccsanandroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1627
    :cond_3
    invoke-virtual {p2}, Lccsanandroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v10

    if-eqz v10, :cond_4

    .line 1628
    invoke-virtual {p2}, Lccsanandroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v8

    .line 1631
    :cond_4
    const-string v10, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v4, v10, v5}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 1632
    const-string v10, "android.speech.extra.PROMPT"

    invoke-virtual {v4, v10, v6}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 1633
    const-string v10, "android.speech.extra.LANGUAGE"

    invoke-virtual {v4, v10, v7}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 1634
    const-string v10, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v4, v10, v8}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;I)Lccsanandroid/content/Intent;

    .line 1635
    if-nez v0, :cond_5

    const/4 v10, 0x0

    goto :goto_0

    .line 1636
    :cond_5
    invoke-virtual {v0}, Lccsanandroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    .line 1635
    :goto_0
    const-string v11, "calling_package"

    invoke-virtual {v4, v11, v10}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 1639
    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v4, v10, v2}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Lccsanandroid/os/Parcelable;)Lccsanandroid/content/Intent;

    .line 1640
    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v4, v10, v3}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Lccsanandroid/os/Bundle;)Lccsanandroid/content/Intent;

    .line 1642
    return-object v4
.end method

.method private createVoiceWebSearchIntent(Lccsanandroid/content/Intent;Lccsanandroid/app/SearchableInfo;)Lccsanandroid/content/Intent;
    .locals 4
    .param p1, "baseIntent"    # Lccsanandroid/content/Intent;
    .param p2, "searchable"    # Lccsanandroid/app/SearchableInfo;

    .line 1572
    new-instance v0, Lccsanandroid/content/Intent;

    invoke-direct {v0, p1}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Intent;)V

    .line 1573
    .local v0, "voiceIntent":Lccsanandroid/content/Intent;
    invoke-virtual {p2}, Lccsanandroid/app/SearchableInfo;->getSearchActivity()Lccsanandroid/content/ComponentName;

    move-result-object v1

    .line 1574
    .local v1, "searchActivity":Lccsanandroid/content/ComponentName;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 1575
    :cond_0
    invoke-virtual {v1}, Lccsanandroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    .line 1574
    :goto_0
    const-string v3, "calling_package"

    invoke-virtual {v0, v3, v2}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 1576
    return-object v0
.end method

.method private dismissSuggestions()V
    .locals 1

    .line 1207
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    .line 1208
    return-void
.end method

.method private getChildBoundsWithinSearchView(Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;)V
    .locals 4
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "rect"    # Lccsanandroid/graphics/Rect;

    .line 856
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mTemp:[I

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->getLocationInWindow([I)V

    .line 857
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mTemp2:[I

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/SearchView;->getLocationInWindow([I)V

    .line 858
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mTemp:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    iget-object v3, p0, Lccsanandroidx/appcompat/widget/SearchView;->mTemp2:[I

    aget v1, v3, v1

    sub-int/2addr v2, v1

    .line 859
    .local v2, "top":I
    const/4 v1, 0x0

    aget v0, v0, v1

    aget v1, v3, v1

    sub-int/2addr v0, v1

    .line 860
    .local v0, "left":I
    invoke-virtual {p1}, Lccsanandroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Lccsanandroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p2, v0, v2, v1, v3}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 861
    return-void
.end method

.method private getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .line 1093
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchHintIcon:Lccsanandroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1097
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->getTextSize()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 1098
    .local v0, "textSize":I
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchHintIcon:Lccsanandroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0, v0}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1100
    new-instance v1, Lccsanandroid/text/SpannableStringBuilder;

    const-string v2, "   "

    invoke-direct {v1, v2}, Lccsanandroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1101
    .local v1, "ssb":Lccsanandroid/text/SpannableStringBuilder;
    new-instance v2, Lccsanandroid/text/style/ImageSpan;

    iget-object v3, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchHintIcon:Lccsanandroid/graphics/drawable/Drawable;

    invoke-direct {v2, v3}, Lccsanandroid/text/style/ImageSpan;-><init>(Lccsanandroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v3, v4, v5}, Lccsanandroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1102
    invoke-virtual {v1, p1}, Lccsanandroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lccsanandroid/text/SpannableStringBuilder;

    .line 1103
    return-object v1

    .line 1094
    .end local v0    # "textSize":I
    .end local v1    # "ssb":Lccsanandroid/text/SpannableStringBuilder;
    :cond_1
    :goto_0
    return-object p1
.end method

.method private getPreferredHeight()I
    .locals 2

    .line 869
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SearchView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccsanandroidx/appcompat/R$dimen;->abc_search_view_preferred_height:I

    .line 870
    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 869
    return v0
.end method

.method private getPreferredWidth()I
    .locals 2

    .line 864
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SearchView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccsanandroidx/appcompat/R$dimen;->abc_search_view_preferred_width:I

    .line 865
    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 864
    return v0
.end method

.method private hasVoiceSearch()Z
    .locals 4

    .line 898
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchable:Lccsanandroid/app/SearchableInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lccsanandroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 899
    const/4 v0, 0x0

    .line 900
    .local v0, "testIntent":Lccsanandroid/content/Intent;
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchable:Lccsanandroid/app/SearchableInfo;

    invoke-virtual {v2}, Lccsanandroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 901
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mVoiceWebSearchIntent:Lccsanandroid/content/Intent;

    goto :goto_0

    .line 902
    :cond_0
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchable:Lccsanandroid/app/SearchableInfo;

    invoke-virtual {v2}, Lccsanandroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 903
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mVoiceAppSearchIntent:Lccsanandroid/content/Intent;

    .line 905
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 906
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SearchView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Lccsanandroid/content/pm/PackageManager;->resolveActivity(Lccsanandroid/content/Intent;I)Lccsanandroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 908
    .local v2, "ri":Lccsanandroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 911
    .end local v0    # "testIntent":Lccsanandroid/content/Intent;
    .end local v2    # "ri":Lccsanandroid/content/pm/ResolveInfo;
    :cond_3
    return v1
.end method

.method static isLandscapeMode(Lccsanandroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 1711
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Lccsanandroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSubmitAreaEnabled()Z
    .locals 1

    .line 915
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSubmitButtonEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private launchIntent(Lccsanandroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Lccsanandroid/content/Intent;

    .line 1499
    if-nez p1, :cond_0

    .line 1500
    return-void

    .line 1505
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SearchView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1508
    goto :goto_0

    .line 1506
    :catch_0
    move-exception v0

    .line 1507
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed launch activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SearchView"

    invoke-static {v2, v1, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1509
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private launchSuggestion(IILjava/lang/String;)Z
    .locals 3
    .param p1, "position"    # I
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .line 1482
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Lccsanandroidx/cursoradapter/widget/CursorAdapter;

    invoke-virtual {v0}, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->getCursor()Lccsanandroid/database/Cursor;

    move-result-object v0

    .line 1483
    .local v0, "c":Lccsanandroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lccsanandroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1485
    invoke-direct {p0, v0, p2, p3}, Lccsanandroidx/appcompat/widget/SearchView;->createIntentFromSuggestion(Lccsanandroid/database/Cursor;ILjava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object v1

    .line 1488
    .local v1, "intent":Lccsanandroid/content/Intent;
    invoke-direct {p0, v1}, Lccsanandroidx/appcompat/widget/SearchView;->launchIntent(Lccsanandroid/content/Intent;)V

    .line 1490
    const/4 v2, 0x1

    return v2

    .line 1492
    .end local v1    # "intent":Lccsanandroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private postUpdateFocusedState()V
    .locals 1

    .line 950
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 951
    return-void
.end method

.method private rewriteQueryFromSuggestion(I)V
    .locals 3
    .param p1, "position"    # I

    .line 1449
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Lccsanandroid/text/Editable;

    move-result-object v0

    .line 1450
    .local v0, "oldQuery":Ljava/lang/CharSequence;
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Lccsanandroidx/cursoradapter/widget/CursorAdapter;

    invoke-virtual {v1}, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->getCursor()Lccsanandroid/database/Cursor;

    move-result-object v1

    .line 1451
    .local v1, "c":Lccsanandroid/database/Cursor;
    if-nez v1, :cond_0

    .line 1452
    return-void

    .line 1454
    :cond_0
    invoke-interface {v1, p1}, Lccsanandroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1456
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Lccsanandroidx/cursoradapter/widget/CursorAdapter;

    invoke-virtual {v2, v1}, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->convertToString(Lccsanandroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1457
    .local v2, "newQuery":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    .line 1460
    invoke-direct {p0, v2}, Lccsanandroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1463
    :cond_1
    invoke-direct {p0, v0}, Lccsanandroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 1465
    .end local v2    # "newQuery":Ljava/lang/CharSequence;
    :goto_0
    goto :goto_1

    .line 1467
    :cond_2
    invoke-direct {p0, v0}, Lccsanandroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 1469
    :goto_1
    return-void
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/CharSequence;

    .line 1515
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1517
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1518
    return-void
.end method

.method private updateCloseButton()V
    .locals 4

    .line 938
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Lccsanandroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 941
    .local v0, "hasText":Z
    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v3, p0, Lccsanandroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lccsanandroidx/appcompat/widget/SearchView;->mExpandedInActionView:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 942
    .local v1, "showClose":Z
    :cond_1
    :goto_0
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/SearchView;->mCloseButton:Lccsanandroid/widget/ImageView;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v3, v2}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 943
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/SearchView;->mCloseButton:Lccsanandroid/widget/ImageView;

    invoke-virtual {v2}, Lccsanandroid/widget/ImageView;->getDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 944
    .local v2, "closeButtonImg":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_4

    .line 945
    if-eqz v0, :cond_3

    sget-object v3, Lccsanandroidx/appcompat/widget/SearchView;->ENABLED_STATE_SET:[I

    goto :goto_2

    :cond_3
    sget-object v3, Lccsanandroidx/appcompat/widget/SearchView;->EMPTY_STATE_SET:[I

    :goto_2
    invoke-virtual {v2, v3}, Lccsanandroid/graphics/drawable/Drawable;->setState([I)Z

    .line 947
    :cond_4
    return-void
.end method

.method private updateQueryHint()V
    .locals 3

    .line 1107
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1108
    .local v0, "hint":Ljava/lang/CharSequence;
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    if-nez v0, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-direct {p0, v2}, Lccsanandroidx/appcompat/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    .line 1109
    return-void
.end method

.method private updateSearchAutoComplete()V
    .locals 6

    .line 1115
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchable:Lccsanandroid/app/SearchableInfo;

    invoke-virtual {v1}, Lccsanandroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    .line 1116
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchable:Lccsanandroid/app/SearchableInfo;

    invoke-virtual {v1}, Lccsanandroid/app/SearchableInfo;->getImeOptions()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1117
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchable:Lccsanandroid/app/SearchableInfo;

    invoke-virtual {v0}, Lccsanandroid/app/SearchableInfo;->getInputType()I

    move-result v0

    .line 1120
    .local v0, "inputType":I
    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1123
    const v1, -0x10001

    and-int/2addr v0, v1

    .line 1124
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchable:Lccsanandroid/app/SearchableInfo;

    invoke-virtual {v1}, Lccsanandroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1125
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 1132
    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    .line 1135
    :cond_0
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 1136
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Lccsanandroidx/cursoradapter/widget/CursorAdapter;

    if-eqz v1, :cond_1

    .line 1137
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lccsanandroidx/cursoradapter/widget/CursorAdapter;->changeCursor(Lccsanandroid/database/Cursor;)V

    .line 1141
    :cond_1
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchable:Lccsanandroid/app/SearchableInfo;

    invoke-virtual {v1}, Lccsanandroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1142
    new-instance v1, Lccsanandroidx/appcompat/widget/SuggestionsAdapter;

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SearchView;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchable:Lccsanandroid/app/SearchableInfo;

    iget-object v5, p0, Lccsanandroidx/appcompat/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-direct {v1, v3, p0, v4, v5}, Lccsanandroidx/appcompat/widget/SuggestionsAdapter;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/widget/SearchView;Lccsanandroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Lccsanandroidx/cursoradapter/widget/CursorAdapter;

    .line 1144
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3, v1}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->setAdapter(Lccsanandroid/widget/ListAdapter;)V

    .line 1145
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Lccsanandroidx/cursoradapter/widget/CursorAdapter;

    check-cast v1, Lccsanandroidx/appcompat/widget/SuggestionsAdapter;

    .line 1146
    iget-boolean v3, p0, Lccsanandroidx/appcompat/widget/SearchView;->mQueryRefinement:Z

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    .line 1147
    :cond_2
    nop

    .line 1145
    :goto_0
    invoke-virtual {v1, v2}, Lccsanandroidx/appcompat/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    .line 1149
    :cond_3
    return-void
.end method

.method private updateSubmitArea()V
    .locals 2

    .line 928
    const/16 v0, 0x8

    .line 929
    .local v0, "visibility":I
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mGoButton:Lccsanandroid/widget/ImageView;

    .line 930
    invoke-virtual {v1}, Lccsanandroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mVoiceButton:Lccsanandroid/widget/ImageView;

    .line 931
    invoke-virtual {v1}, Lccsanandroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 932
    :cond_0
    const/4 v0, 0x0

    .line 934
    :cond_1
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSubmitArea:Lccsanandroid/view/View;

    invoke-virtual {v1, v0}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 935
    return-void
.end method

.method private updateSubmitButton(Z)V
    .locals 2
    .param p1, "hasText"    # Z

    .line 919
    const/16 v0, 0x8

    .line 920
    .local v0, "visibility":I
    iget-boolean v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSubmitButtonEnabled:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mVoiceButtonEnabled:Z

    if-nez v1, :cond_1

    .line 922
    :cond_0
    const/4 v0, 0x0

    .line 924
    :cond_1
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mGoButton:Lccsanandroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 925
    return-void
.end method

.method private updateViewsVisibility(Z)V
    .locals 6
    .param p1, "collapsed"    # Z

    .line 874
    iput-boolean p1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mIconified:Z

    .line 876
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 878
    .local v2, "visCollapsed":I
    :goto_0
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Lccsanandroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 880
    .local v3, "hasText":Z
    iget-object v5, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchButton:Lccsanandroid/widget/ImageView;

    invoke-virtual {v5, v2}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 881
    invoke-direct {p0, v3}, Lccsanandroidx/appcompat/widget/SearchView;->updateSubmitButton(Z)V

    .line 882
    iget-object v5, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchEditFrame:Lccsanandroid/view/View;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v5, v0}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 885
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mCollapsedIcon:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v0, :cond_2

    goto :goto_2

    .line 888
    :cond_2
    const/4 v0, 0x0

    .local v0, "iconVisibility":I
    goto :goto_3

    .line 886
    .end local v0    # "iconVisibility":I
    :cond_3
    :goto_2
    const/16 v0, 0x8

    .line 890
    .restart local v0    # "iconVisibility":I
    :goto_3
    iget-object v5, p0, Lccsanandroidx/appcompat/widget/SearchView;->mCollapsedIcon:Lccsanandroid/widget/ImageView;

    invoke-virtual {v5, v0}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 892
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/SearchView;->updateCloseButton()V

    .line 893
    if-nez v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-direct {p0, v1}, Lccsanandroidx/appcompat/widget/SearchView;->updateVoiceButton(Z)V

    .line 894
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/SearchView;->updateSubmitArea()V

    .line 895
    return-void
.end method

.method private updateVoiceButton(Z)V
    .locals 3
    .param p1, "empty"    # Z

    .line 1158
    const/16 v0, 0x8

    .line 1159
    .local v0, "visibility":I
    iget-boolean v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SearchView;->isIconified()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 1160
    const/4 v0, 0x0

    .line 1161
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mGoButton:Lccsanandroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 1163
    :cond_0
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mVoiceButton:Lccsanandroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 1164
    return-void
.end method


# virtual methods
.method adjustDropDownSizeAndPosition()V
    .locals 8

    .line 1369
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mDropDownAnchor:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 1370
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SearchView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    .line 1371
    .local v0, "res":Lccsanandroid/content/res/Resources;
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchPlate:Lccsanandroid/view/View;

    invoke-virtual {v1}, Lccsanandroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 1372
    .local v1, "anchorPadding":I
    new-instance v2, Lccsanandroid/graphics/Rect;

    invoke-direct {v2}, Lccsanandroid/graphics/Rect;-><init>()V

    .line 1373
    .local v2, "dropDownPadding":Lccsanandroid/graphics/Rect;
    invoke-static {p0}, Lccsanandroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Lccsanandroid/view/View;)Z

    move-result v3

    .line 1374
    .local v3, "isLayoutRtl":Z
    iget-boolean v4, p0, Lccsanandroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v4, :cond_0

    .line 1376
    sget v4, Lccsanandroidx/appcompat/R$dimen;->abc_dropdownitem_icon_width:I

    .line 1375
    invoke-virtual {v0, v4}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v5, Lccsanandroidx/appcompat/R$dimen;->abc_dropdownitem_text_padding_left:I

    .line 1376
    invoke-virtual {v0, v5}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    .line 1377
    :cond_0
    const/4 v4, 0x0

    :goto_0
    nop

    .line 1378
    .local v4, "iconOffset":I
    iget-object v5, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->getDropDownBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v2}, Lccsanandroid/graphics/drawable/Drawable;->getPadding(Lccsanandroid/graphics/Rect;)Z

    .line 1380
    if-eqz v3, :cond_1

    .line 1381
    iget v5, v2, Lccsanandroid/graphics/Rect;->left:I

    neg-int v5, v5

    .local v5, "offset":I
    goto :goto_1

    .line 1383
    .end local v5    # "offset":I
    :cond_1
    iget v5, v2, Lccsanandroid/graphics/Rect;->left:I

    add-int/2addr v5, v4

    sub-int v5, v1, v5

    .line 1385
    .restart local v5    # "offset":I
    :goto_1
    iget-object v6, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v6, v5}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    .line 1386
    iget-object v6, p0, Lccsanandroidx/appcompat/widget/SearchView;->mDropDownAnchor:Lccsanandroid/view/View;

    invoke-virtual {v6}, Lccsanandroid/view/View;->getWidth()I

    move-result v6

    iget v7, v2, Lccsanandroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iget v7, v2, Lccsanandroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    add-int/2addr v6, v4

    sub-int/2addr v6, v1

    .line 1388
    .local v6, "width":I
    iget-object v7, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7, v6}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->setDropDownWidth(I)V

    .line 1390
    .end local v0    # "res":Lccsanandroid/content/res/Resources;
    .end local v1    # "anchorPadding":I
    .end local v2    # "dropDownPadding":Lccsanandroid/graphics/Rect;
    .end local v3    # "isLayoutRtl":Z
    .end local v4    # "iconOffset":I
    .end local v5    # "offset":I
    .end local v6    # "width":I
    :cond_2
    return-void
.end method

.method public clearFocus()V
    .locals 2

    .line 502
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mClearingFocus:Z

    .line 503
    invoke-super {p0}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat;->clearFocus()V

    .line 504
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->clearFocus()V

    .line 505
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 506
    iput-boolean v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mClearingFocus:Z

    .line 507
    return-void
.end method

.method forceSuggestionQuery()V
    .locals 2

    .line 1702
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 1703
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->refreshAutoCompleteResults()V

    goto :goto_0

    .line 1705
    :cond_0
    sget-object v0, Lccsanandroidx/appcompat/widget/SearchView;->PRE_API_29_HIDDEN_METHOD_INVOKER:Lccsanandroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->doBeforeTextChanged(Lccsanandroid/widget/AutoCompleteTextView;)V

    .line 1706
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->doAfterTextChanged(Lccsanandroid/widget/AutoCompleteTextView;)V

    .line 1708
    :goto_0
    return-void
.end method

.method public getImeOptions()I
    .locals 1

    .line 457
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .locals 1

    .line 479
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 782
    iget v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mMaxWidth:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    .line 564
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Lccsanandroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 2

    .line 624
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .local v0, "hint":Ljava/lang/CharSequence;
    goto :goto_0

    .line 626
    .end local v0    # "hint":Ljava/lang/CharSequence;
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchable:Lccsanandroid/app/SearchableInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsanandroid/app/SearchableInfo;->getHintId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SearchView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchable:Lccsanandroid/app/SearchableInfo;

    invoke-virtual {v1}, Lccsanandroid/app/SearchableInfo;->getHintId()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "hint":Ljava/lang/CharSequence;
    goto :goto_0

    .line 629
    .end local v0    # "hint":Ljava/lang/CharSequence;
    :cond_1
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mDefaultQueryHint:Ljava/lang/CharSequence;

    .line 631
    .restart local v0    # "hint":Ljava/lang/CharSequence;
    :goto_0
    return-object v0
.end method

.method getSuggestionCommitIconResId()I
    .locals 1

    .line 399
    iget v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSuggestionCommitIconResId:I

    return v0
.end method

.method getSuggestionRowLayout()I
    .locals 1

    .line 395
    iget v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSuggestionRowLayout:I

    return v0
.end method

.method public getSuggestionsAdapter()Lccsanandroidx/cursoradapter/widget/CursorAdapter;
    .locals 1

    .line 760
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Lccsanandroidx/cursoradapter/widget/CursorAdapter;

    return-object v0
.end method

.method public isIconfiedByDefault()Z
    .locals 1

    .line 660
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    return v0
.end method

.method public isIconified()Z
    .locals 1

    .line 688
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mIconified:Z

    return v0
.end method

.method public isQueryRefinementEnabled()Z
    .locals 1

    .line 740
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mQueryRefinement:Z

    return v0
.end method

.method public isSubmitButtonEnabled()Z
    .locals 1

    .line 710
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSubmitButtonEnabled:Z

    return v0
.end method

.method launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "actionKey"    # I
    .param p2, "actionMsg"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;

    .line 1521
    const-string v7, "android.intent.action.SEARCH"

    .line 1522
    .local v7, "action":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, v7

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lccsanandroidx/appcompat/widget/SearchView;->createIntent(Ljava/lang/String;Lccsanandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object v0

    .line 1523
    .local v0, "intent":Lccsanandroid/content/Intent;
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SearchView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    .line 1524
    return-void
.end method

.method public onActionViewCollapsed()V
    .locals 3

    .line 1284
    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lccsanandroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1285
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 1286
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccsanandroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1287
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget v2, p0, Lccsanandroidx/appcompat/widget/SearchView;->mCollapsedImeOptions:I

    invoke-virtual {v0, v2}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1288
    iput-boolean v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mExpandedInActionView:Z

    .line 1289
    return-void
.end method

.method public onActionViewExpanded()V
    .locals 3

    .line 1296
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mExpandedInActionView:Z

    if-eqz v0, :cond_0

    return-void

    .line 1298
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mExpandedInActionView:Z

    .line 1299
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mCollapsedImeOptions:I

    .line 1300
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/high16 v2, 0x2000000

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1301
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1302
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/SearchView;->setIconified(Z)V

    .line 1303
    return-void
.end method

.method onCloseClicked()V
    .locals 4

    .line 1211
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Lccsanandroid/text/Editable;

    move-result-object v0

    .line 1212
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1213
    iget-boolean v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v1, :cond_2

    .line 1215
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mOnCloseListener:Lccsanandroidx/appcompat/widget/SearchView$OnCloseListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lccsanandroidx/appcompat/widget/SearchView$OnCloseListener;->onClose()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1217
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 1219
    invoke-direct {p0, v2}, Lccsanandroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    goto :goto_0

    .line 1223
    :cond_1
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const-string v3, ""

    invoke-virtual {v1, v3}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1224
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1225
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v2}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 1228
    :cond_2
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 969
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 970
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 971
    invoke-super {p0}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 972
    return-void
.end method

.method onItemClicked(IILjava/lang/String;)Z
    .locals 2
    .param p1, "position"    # I
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .line 1393
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mOnSuggestionListener:Lccsanandroidx/appcompat/widget/SearchView$OnSuggestionListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1394
    invoke-interface {v0, p1}, Lccsanandroidx/appcompat/widget/SearchView$OnSuggestionListener;->onSuggestionClick(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1400
    :cond_0
    return v1

    .line 1395
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lccsanandroidx/appcompat/widget/SearchView;->launchSuggestion(IILjava/lang/String;)Z

    .line 1396
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 1397
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/SearchView;->dismissSuggestions()V

    .line 1398
    const/4 v0, 0x1

    return v0
.end method

.method onItemSelected(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 1404
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mOnSuggestionListener:Lccsanandroidx/appcompat/widget/SearchView$OnSuggestionListener;

    if-eqz v0, :cond_1

    .line 1405
    invoke-interface {v0, p1}, Lccsanandroidx/appcompat/widget/SearchView$OnSuggestionListener;->onSuggestionSelect(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1409
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1406
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lccsanandroidx/appcompat/widget/SearchView;->rewriteQueryFromSuggestion(I)V

    .line 1407
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 837
    invoke-super/range {p0 .. p5}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 839
    if-eqz p1, :cond_1

    .line 842
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextViewBounds:Lccsanandroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lccsanandroidx/appcompat/widget/SearchView;->getChildBoundsWithinSearchView(Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;)V

    .line 843
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Lccsanandroid/graphics/Rect;

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextViewBounds:Lccsanandroid/graphics/Rect;

    iget v1, v1, Lccsanandroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    iget-object v3, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextViewBounds:Lccsanandroid/graphics/Rect;

    iget v3, v3, Lccsanandroid/graphics/Rect;->right:I

    sub-int v4, p5, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 845
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mTouchDelegate:Lccsanandroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;

    if-nez v0, :cond_0

    .line 846
    new-instance v0, Lccsanandroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Lccsanandroid/graphics/Rect;

    iget-object v2, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextViewBounds:Lccsanandroid/graphics/Rect;

    iget-object v3, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-direct {v0, v1, v2, v3}, Lccsanandroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;-><init>(Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;Lccsanandroid/view/View;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mTouchDelegate:Lccsanandroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;

    .line 848
    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/SearchView;->setTouchDelegate(Lccsanandroid/view/TouchDelegate;)V

    goto :goto_0

    .line 850
    :cond_0
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Lccsanandroid/graphics/Rect;

    iget-object v2, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextViewBounds:Lccsanandroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->setBounds(Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;)V

    .line 853
    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 788
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SearchView;->isIconified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    invoke-super {p0, p1, p2}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 790
    return-void

    .line 793
    :cond_0
    invoke-static {p1}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 794
    .local v0, "widthMode":I
    invoke-static {p1}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 796
    .local v1, "width":I
    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 807
    :sswitch_0
    iget v2, p0, Lccsanandroidx/appcompat/widget/SearchView;->mMaxWidth:I

    if-lez v2, :cond_3

    .line 808
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    .line 813
    :sswitch_1
    iget v2, p0, Lccsanandroidx/appcompat/widget/SearchView;->mMaxWidth:I

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/SearchView;->getPreferredWidth()I

    move-result v2

    :goto_0
    move v1, v2

    goto :goto_1

    .line 799
    :sswitch_2
    iget v2, p0, Lccsanandroidx/appcompat/widget/SearchView;->mMaxWidth:I

    if-lez v2, :cond_2

    .line 800
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    .line 802
    :cond_2
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/SearchView;->getPreferredWidth()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 804
    nop

    .line 816
    :cond_3
    :goto_1
    const/high16 v0, 0x40000000    # 2.0f

    .line 818
    invoke-static {p2}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 819
    .local v2, "heightMode":I
    invoke-static {p2}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 821
    .local v3, "height":I
    sparse-switch v2, :sswitch_data_1

    goto :goto_2

    .line 826
    :sswitch_3
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/SearchView;->getPreferredHeight()I

    move-result v3

    goto :goto_2

    .line 823
    :sswitch_4
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/SearchView;->getPreferredHeight()I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 824
    nop

    .line 829
    :goto_2
    const/high16 v2, 0x40000000    # 2.0f

    .line 831
    invoke-static {v1, v0}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 832
    invoke-static {v3, v2}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 831
    invoke-super {p0, v4, v5}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 833
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_4
        0x0 -> :sswitch_3
    .end sparse-switch
.end method

.method onQueryRefine(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "queryText"    # Ljava/lang/CharSequence;

    .line 978
    invoke-direct {p0, p1}, Lccsanandroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 979
    return-void
.end method

.method protected onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Lccsanandroid/os/Parcelable;

    .line 1358
    instance-of v0, p1, Lccsanandroidx/appcompat/widget/SearchView$SavedState;

    if-nez v0, :cond_0

    .line 1359
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat;->onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V

    .line 1360
    return-void

    .line 1362
    :cond_0
    move-object v0, p1

    check-cast v0, Lccsanandroidx/appcompat/widget/SearchView$SavedState;

    .line 1363
    .local v0, "ss":Lccsanandroidx/appcompat/widget/SearchView$SavedState;
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/SearchView$SavedState;->getSuperState()Lccsanandroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat;->onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V

    .line 1364
    iget-boolean v1, v0, Lccsanandroidx/appcompat/widget/SearchView$SavedState;->isIconified:Z

    invoke-direct {p0, v1}, Lccsanandroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1365
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SearchView;->requestLayout()V

    .line 1366
    return-void
.end method

.method protected onSaveInstanceState()Lccsanandroid/os/Parcelable;
    .locals 3

    .line 1350
    invoke-super {p0}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat;->onSaveInstanceState()Lccsanandroid/os/Parcelable;

    move-result-object v0

    .line 1351
    .local v0, "superState":Lccsanandroid/os/Parcelable;
    new-instance v1, Lccsanandroidx/appcompat/widget/SearchView$SavedState;

    invoke-direct {v1, v0}, Lccsanandroidx/appcompat/widget/SearchView$SavedState;-><init>(Lccsanandroid/os/Parcelable;)V

    .line 1352
    .local v1, "ss":Lccsanandroidx/appcompat/widget/SearchView$SavedState;
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SearchView;->isIconified()Z

    move-result v2

    iput-boolean v2, v1, Lccsanandroidx/appcompat/widget/SearchView$SavedState;->isIconified:Z

    .line 1353
    return-object v1
.end method

.method onSearchClicked()V
    .locals 2

    .line 1231
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsanandroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1232
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1233
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 1234
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mOnSearchClickListener:Lccsanandroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 1235
    invoke-interface {v0, p0}, Lccsanandroid/view/View$OnClickListener;->onClick(Lccsanandroid/view/View;)V

    .line 1237
    :cond_0
    return-void
.end method

.method onSubmitQuery()V
    .locals 4

    .line 1193
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Lccsanandroid/text/Editable;

    move-result-object v0

    .line 1194
    .local v0, "query":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    .line 1195
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mOnQueryChangeListener:Lccsanandroidx/appcompat/widget/SearchView$OnQueryTextListener;

    if-eqz v1, :cond_0

    .line 1196
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lccsanandroidx/appcompat/widget/SearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1197
    :cond_0
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchable:Lccsanandroid/app/SearchableInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1198
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3}, Lccsanandroidx/appcompat/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 1200
    :cond_1
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v2}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 1201
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/SearchView;->dismissSuggestions()V

    .line 1204
    :cond_2
    return-void
.end method

.method onSuggestionsKey(Lccsanandroid/view/View;ILccsanandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Lccsanandroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Lccsanandroid/view/KeyEvent;

    .line 1048
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchable:Lccsanandroid/app/SearchableInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1049
    return v1

    .line 1051
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Lccsanandroidx/cursoradapter/widget/CursorAdapter;

    if-nez v0, :cond_1

    .line 1052
    return v1

    .line 1054
    :cond_1
    invoke-virtual {p3}, Lccsanandroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p3}, Lccsanandroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1057
    const/16 v0, 0x42

    if-eq p2, v0, :cond_6

    const/16 v0, 0x54

    if-eq p2, v0, :cond_6

    const/16 v0, 0x3d

    if-ne p2, v0, :cond_2

    goto :goto_2

    .line 1065
    :cond_2
    const/16 v0, 0x15

    if-eq p2, v0, :cond_4

    const/16 v2, 0x16

    if-ne p2, v2, :cond_3

    goto :goto_0

    .line 1081
    :cond_3
    const/16 v0, 0x13

    if-ne p2, v0, :cond_7

    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->getListSelection()I

    .line 1084
    return v1

    .line 1070
    :cond_4
    :goto_0
    if-ne p2, v0, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    .line 1071
    :cond_5
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->length()I

    move-result v0

    :goto_1
    nop

    .line 1072
    .local v0, "selPoint":I
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v0}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1073
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v1}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->setListSelection(I)V

    .line 1074
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->clearListSelection()V

    .line 1075
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->ensureImeVisible()V

    .line 1077
    const/4 v1, 0x1

    return v1

    .line 1059
    .end local v0    # "selPoint":I
    :cond_6
    :goto_2
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v0

    .line 1060
    .local v0, "position":I
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lccsanandroidx/appcompat/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v1

    return v1

    .line 1087
    .end local v0    # "position":I
    :cond_7
    return v1
.end method

.method onTextChanged(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "newText"    # Ljava/lang/CharSequence;

    .line 1179
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Lccsanandroid/text/Editable;

    move-result-object v0

    .line 1180
    .local v0, "text":Ljava/lang/CharSequence;
    iput-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 1181
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 1182
    .local v1, "hasText":Z
    invoke-direct {p0, v1}, Lccsanandroidx/appcompat/widget/SearchView;->updateSubmitButton(Z)V

    .line 1183
    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v2}, Lccsanandroidx/appcompat/widget/SearchView;->updateVoiceButton(Z)V

    .line 1184
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/SearchView;->updateCloseButton()V

    .line 1185
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/SearchView;->updateSubmitArea()V

    .line 1186
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/SearchView;->mOnQueryChangeListener:Lccsanandroidx/appcompat/widget/SearchView$OnQueryTextListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lccsanandroidx/appcompat/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1187
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/SearchView;->mOnQueryChangeListener:Lccsanandroidx/appcompat/widget/SearchView$OnQueryTextListener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lccsanandroidx/appcompat/widget/SearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    .line 1189
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lccsanandroidx/appcompat/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    .line 1190
    return-void
.end method

.method onTextFocusChanged()V
    .locals 1

    .line 1263
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lccsanandroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1266
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/SearchView;->postUpdateFocusedState()V

    .line 1267
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1268
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SearchView;->forceSuggestionQuery()V

    .line 1270
    :cond_0
    return-void
.end method

.method onVoiceClicked()V
    .locals 4

    .line 1241
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchable:Lccsanandroid/app/SearchableInfo;

    if-nez v0, :cond_0

    .line 1242
    return-void

    .line 1244
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchable:Lccsanandroid/app/SearchableInfo;

    .line 1246
    .local v0, "searchable":Lccsanandroid/app/SearchableInfo;
    :try_start_0
    invoke-virtual {v0}, Lccsanandroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1247
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mVoiceWebSearchIntent:Lccsanandroid/content/Intent;

    invoke-direct {p0, v1, v0}, Lccsanandroidx/appcompat/widget/SearchView;->createVoiceWebSearchIntent(Lccsanandroid/content/Intent;Lccsanandroid/app/SearchableInfo;)Lccsanandroid/content/Intent;

    move-result-object v1

    .line 1249
    .local v1, "webSearchIntent":Lccsanandroid/content/Intent;
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SearchView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    .end local v1    # "webSearchIntent":Lccsanandroid/content/Intent;
    goto :goto_0

    .line 1250
    :cond_1
    invoke-virtual {v0}, Lccsanandroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1251
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mVoiceAppSearchIntent:Lccsanandroid/content/Intent;

    invoke-direct {p0, v1, v0}, Lccsanandroidx/appcompat/widget/SearchView;->createVoiceAppSearchIntent(Lccsanandroid/content/Intent;Lccsanandroid/app/SearchableInfo;)Lccsanandroid/content/Intent;

    move-result-object v1

    .line 1253
    .local v1, "appSearchIntent":Lccsanandroid/content/Intent;
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SearchView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_0
    .catch Lccsanandroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1250
    .end local v1    # "appSearchIntent":Lccsanandroid/content/Intent;
    :cond_2
    :goto_0
    nop

    .line 1259
    :goto_1
    goto :goto_2

    .line 1255
    :catch_0
    move-exception v1

    .line 1258
    .local v1, "e":Lccsanandroid/content/ActivityNotFoundException;
    const-string v2, "SearchView"

    const-string v3, "Could not find voice search activity"

    invoke-static {v2, v3}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    .end local v1    # "e":Lccsanandroid/content/ActivityNotFoundException;
    :goto_2
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .line 1274
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat;->onWindowFocusChanged(Z)V

    .line 1276
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/SearchView;->postUpdateFocusedState()V

    .line 1277
    return-void
.end method

.method public requestFocus(ILccsanandroid/graphics/Rect;)Z
    .locals 2
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Lccsanandroid/graphics/Rect;

    .line 485
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mClearingFocus:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 487
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SearchView;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 489
    :cond_1
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_3

    .line 490
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->requestFocus(ILccsanandroid/graphics/Rect;)Z

    move-result v0

    .line 491
    .local v0, "result":Z
    if-eqz v0, :cond_2

    .line 492
    invoke-direct {p0, v1}, Lccsanandroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    .line 494
    :cond_2
    return v0

    .line 496
    .end local v0    # "result":Z
    :cond_3
    invoke-super {p0, p1, p2}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat;->requestFocus(ILccsanandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public setAppSearchData(Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "appSearchData"    # Lccsanandroid/os/Bundle;

    .line 434
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mAppSearchData:Lccsanandroid/os/Bundle;

    .line 435
    return-void
.end method

.method public setIconified(Z)V
    .locals 0
    .param p1, "iconify"    # Z

    .line 674
    if-eqz p1, :cond_0

    .line 675
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SearchView;->onCloseClicked()V

    goto :goto_0

    .line 677
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SearchView;->onSearchClicked()V

    .line 679
    :goto_0
    return-void
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1
    .param p1, "iconified"    # Z

    .line 647
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 648
    :cond_0
    iput-boolean p1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    .line 649
    invoke-direct {p0, p1}, Lccsanandroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    .line 650
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/SearchView;->updateQueryHint()V

    .line 651
    return-void
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1, "imeOptions"    # I

    .line 446
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 447
    return-void
.end method

.method public setInputType(I)V
    .locals 1
    .param p1, "inputType"    # I

    .line 469
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 470
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxpixels"    # I

    .line 769
    iput p1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mMaxWidth:I

    .line 771
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SearchView;->requestLayout()V

    .line 772
    return-void
.end method

.method public setOnCloseListener(Lccsanandroidx/appcompat/widget/SearchView$OnCloseListener;)V
    .locals 0
    .param p1, "listener"    # Lccsanandroidx/appcompat/widget/SearchView$OnCloseListener;

    .line 525
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mOnCloseListener:Lccsanandroidx/appcompat/widget/SearchView$OnCloseListener;

    .line 526
    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Lccsanandroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lccsanandroid/view/View$OnFocusChangeListener;

    .line 534
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mOnQueryTextFocusChangeListener:Lccsanandroid/view/View$OnFocusChangeListener;

    .line 535
    return-void
.end method

.method public setOnQueryTextListener(Lccsanandroidx/appcompat/widget/SearchView$OnQueryTextListener;)V
    .locals 0
    .param p1, "listener"    # Lccsanandroidx/appcompat/widget/SearchView$OnQueryTextListener;

    .line 516
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mOnQueryChangeListener:Lccsanandroidx/appcompat/widget/SearchView$OnQueryTextListener;

    .line 517
    return-void
.end method

.method public setOnSearchClickListener(Lccsanandroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lccsanandroid/view/View$OnClickListener;

    .line 555
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mOnSearchClickListener:Lccsanandroid/view/View$OnClickListener;

    .line 556
    return-void
.end method

.method public setOnSuggestionListener(Lccsanandroidx/appcompat/widget/SearchView$OnSuggestionListener;)V
    .locals 0
    .param p1, "listener"    # Lccsanandroidx/appcompat/widget/SearchView$OnSuggestionListener;

    .line 543
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mOnSuggestionListener:Lccsanandroidx/appcompat/widget/SearchView$OnSuggestionListener;

    .line 544
    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "query"    # Ljava/lang/CharSequence;
    .param p2, "submit"    # Z

    .line 576
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 577
    if-eqz p1, :cond_0

    .line 578
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 579
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 583
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 584
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SearchView;->onSubmitQuery()V

    .line 586
    :cond_1
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .line 599
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 600
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/SearchView;->updateQueryHint()V

    .line 601
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 728
    iput-boolean p1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mQueryRefinement:Z

    .line 729
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Lccsanandroidx/cursoradapter/widget/CursorAdapter;

    instance-of v1, v0, Lccsanandroidx/appcompat/widget/SuggestionsAdapter;

    if-eqz v1, :cond_1

    .line 730
    check-cast v0, Lccsanandroidx/appcompat/widget/SuggestionsAdapter;

    .line 731
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 730
    :goto_0
    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    .line 733
    :cond_1
    return-void
.end method

.method public setSearchableInfo(Lccsanandroid/app/SearchableInfo;)V
    .locals 2
    .param p1, "searchable"    # Lccsanandroid/app/SearchableInfo;

    .line 411
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchable:Lccsanandroid/app/SearchableInfo;

    .line 412
    if-eqz p1, :cond_0

    .line 413
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/SearchView;->updateSearchAutoComplete()V

    .line 414
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/SearchView;->updateQueryHint()V

    .line 417
    :cond_0
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/SearchView;->hasVoiceSearch()Z

    move-result v0

    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mVoiceButtonEnabled:Z

    .line 419
    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const-string v1, "nm"

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 424
    :cond_1
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lccsanandroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    .line 425
    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 700
    iput-boolean p1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSubmitButtonEnabled:Z

    .line 701
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lccsanandroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    .line 702
    return-void
.end method

.method public setSuggestionsAdapter(Lccsanandroidx/cursoradapter/widget/CursorAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lccsanandroidx/cursoradapter/widget/CursorAdapter;

    .line 750
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Lccsanandroidx/cursoradapter/widget/CursorAdapter;

    .line 752
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->setAdapter(Lccsanandroid/widget/ListAdapter;)V

    .line 753
    return-void
.end method

.method updateFocusedState()V
    .locals 4

    .line 954
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    .line 955
    .local v0, "focused":Z
    if-eqz v0, :cond_0

    sget-object v1, Lccsanandroidx/appcompat/widget/SearchView;->FOCUSED_STATE_SET:[I

    goto :goto_0

    :cond_0
    sget-object v1, Lccsanandroidx/appcompat/widget/SearchView;->EMPTY_STATE_SET:[I

    .line 956
    .local v1, "stateSet":[I
    :goto_0
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSearchPlate:Lccsanandroid/view/View;

    invoke-virtual {v2}, Lccsanandroid/view/View;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 957
    .local v2, "searchPlateBg":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 958
    invoke-virtual {v2, v1}, Lccsanandroid/graphics/drawable/Drawable;->setState([I)Z

    .line 960
    :cond_1
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/SearchView;->mSubmitArea:Lccsanandroid/view/View;

    invoke-virtual {v3}, Lccsanandroid/view/View;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 961
    .local v3, "submitAreaBg":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2

    .line 962
    invoke-virtual {v3, v1}, Lccsanandroid/graphics/drawable/Drawable;->setState([I)Z

    .line 964
    :cond_2
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/SearchView;->invalidate()V

    .line 965
    return-void
.end method