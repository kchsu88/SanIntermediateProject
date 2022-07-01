.class public Lccsanandroidx/appcompat/app/AppCompatViewInflater;
.super Ljava/lang/Object;
.source "AppCompatViewInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppCompatViewInflater"

.field private static final sClassPrefixList:[Ljava/lang/String;

.field private static final sConstructorMap:Lccsanandroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lccsanandroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final sOnClickAttrs:[I


# instance fields
.field private final mConstructorArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 75
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Lccsanandroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lccsanandroid/util/AttributeSet;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->sConstructorSignature:[Ljava/lang/Class;

    .line 77
    new-array v1, v4, [I

    const v2, 0x101026f

    aput v2, v1, v3

    sput-object v1, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->sOnClickAttrs:[I

    .line 79
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.widget."

    aput-object v2, v1, v3

    const-string v2, "android.view."

    aput-object v2, v1, v4

    const-string v2, "android.webkit."

    aput-object v2, v1, v0

    sput-object v1, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;

    .line 87
    new-instance v0, Lccsanandroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Lccsanandroidx/collection/SimpleArrayMap;-><init>()V

    sput-object v0, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->sConstructorMap:Lccsanandroidx/collection/SimpleArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    return-void
.end method

.method private checkOnClickListener(Lccsanandroid/view/View;Lccsanandroid/util/AttributeSet;)V
    .locals 4
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 313
    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    .line 315
    .local v0, "context":Lccsanandroid/content/Context;
    instance-of v1, v0, Lccsanandroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_0

    .line 316
    invoke-static {p1}, Lccsanandroidx/core/view/ViewCompat;->hasOnClickListeners(Lccsanandroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 323
    :cond_0
    sget-object v1, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->sOnClickAttrs:[I

    invoke-virtual {v0, p2, v1}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v1

    .line 324
    .local v1, "a":Lccsanandroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lccsanandroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "handlerName":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 326
    new-instance v3, Lccsanandroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;

    invoke-direct {v3, p1, v2}, Lccsanandroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;-><init>(Lccsanandroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 328
    :cond_1
    invoke-virtual {v1}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 329
    return-void

    .line 320
    .end local v1    # "a":Lccsanandroid/content/res/TypedArray;
    .end local v2    # "handlerName":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method

.method private createViewByPrefix(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/view/View;
    .locals 5
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Lccsanandroid/view/InflateException;
        }
    .end annotation

    .line 333
    sget-object v0, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->sConstructorMap:Lccsanandroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p2}, Lccsanandroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 336
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lccsanandroid/view/View;>;"
    if-nez v1, :cond_1

    .line 339
    if-eqz p3, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    const/4 v3, 0x0

    .line 341
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 338
    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lccsanandroid/view/View;

    .line 341
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 343
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lccsanandroid/view/View;>;"
    sget-object v3, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->sConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    move-object v1, v3

    .line 344
    invoke-virtual {v0, p2, v1}, Lccsanandroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lccsanandroid/view/View;>;"
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 347
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 348
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    return-object v2
.end method

.method private createViewFromTag(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/util/AttributeSet;)Lccsanandroid/view/View;
    .locals 6
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 277
    const-string/jumbo v0, "view"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 278
    const-string v0, "class"

    invoke-interface {p3, v1, v0}, Lccsanandroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 282
    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object p1, v3, v0

    .line 283
    aput-object p3, v3, v2

    .line 285
    const/4 v3, -0x1

    const/16 v4, 0x2e

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 286
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v4, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 287
    aget-object v4, v4, v3

    invoke-direct {p0, p1, p2, v4}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->createViewByPrefix(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/view/View;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    .local v4, "view":Lccsanandroid/view/View;
    if-eqz v4, :cond_1

    .line 289
    nop

    .line 302
    iget-object v5, p0, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, v5, v0

    .line 303
    aput-object v1, v5, v2

    .line 289
    return-object v4

    .line 286
    .end local v4    # "view":Lccsanandroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 292
    .end local v3    # "i":I
    :cond_2
    nop

    .line 302
    iget-object v3, p0, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, v3, v0

    .line 303
    aput-object v1, v3, v2

    .line 292
    return-object v1

    .line 294
    :cond_3
    :try_start_1
    invoke-direct {p0, p1, p2, v1}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->createViewByPrefix(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/view/View;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    iget-object v4, p0, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, v4, v0

    .line 303
    aput-object v1, v4, v2

    .line 294
    return-object v3

    .line 302
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, v4, v0

    .line 303
    aput-object v1, v4, v2

    .line 304
    throw v3

    .line 296
    :catch_0
    move-exception v3

    .line 299
    .local v3, "e":Ljava/lang/Exception;
    nop

    .line 302
    iget-object v4, p0, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, v4, v0

    .line 303
    aput-object v1, v4, v2

    .line 299
    return-object v1
.end method

.method private static themifyContext(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;ZZ)Lccsanandroid/content/Context;
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p2, "useAndroidTheme"    # Z
    .param p3, "useAppTheme"    # Z

    .line 360
    sget-object v0, Lccsanandroidx/appcompat/R$styleable;->View:[I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[III)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 361
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    const/4 v2, 0x0

    .line 362
    .local v2, "themeId":I
    if-eqz p2, :cond_0

    .line 364
    sget v3, Lccsanandroidx/appcompat/R$styleable;->View_android_theme:I

    invoke-virtual {v0, v3, v1}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 366
    :cond_0
    if-eqz p3, :cond_1

    if-nez v2, :cond_1

    .line 368
    sget v3, Lccsanandroidx/appcompat/R$styleable;->View_theme:I

    invoke-virtual {v0, v3, v1}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 370
    if-eqz v2, :cond_1

    .line 371
    const-string v1, "AppCompatViewInflater"

    const-string v3, "app:theme is now deprecated. Please move to using android:theme instead."

    invoke-static {v1, v3}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_1
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 377
    if-eqz v2, :cond_3

    instance-of v1, p0, Lccsanandroidx/appcompat/view/ContextThemeWrapper;

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Lccsanandroidx/appcompat/view/ContextThemeWrapper;

    .line 378
    invoke-virtual {v1}, Lccsanandroidx/appcompat/view/ContextThemeWrapper;->getThemeResId()I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 381
    :cond_2
    new-instance v1, Lccsanandroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v2}, Lccsanandroidx/appcompat/view/ContextThemeWrapper;-><init>(Lccsanandroid/content/Context;I)V

    move-object p0, v1

    .line 383
    :cond_3
    return-object p0
.end method

.method private verifyNotNull(Lccsanandroid/view/View;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "name"    # Ljava/lang/String;

    .line 265
    if-eqz p1, :cond_0

    .line 269
    return-void

    .line 266
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " asked to inflate view for <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">, but returned null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected createAutoCompleteTextView(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/AppCompatAutoCompleteTextView;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 240
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    invoke-direct {v0, p1, p2}, Lccsanandroidx/appcompat/widget/AppCompatAutoCompleteTextView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createButton(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/AppCompatButton;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 204
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatButton;

    invoke-direct {v0, p1, p2}, Lccsanandroidx/appcompat/widget/AppCompatButton;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createCheckBox(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/AppCompatCheckBox;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 224
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatCheckBox;

    invoke-direct {v0, p1, p2}, Lccsanandroidx/appcompat/widget/AppCompatCheckBox;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createCheckedTextView(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/AppCompatCheckedTextView;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 234
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-direct {v0, p1, p2}, Lccsanandroidx/appcompat/widget/AppCompatCheckedTextView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createEditText(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/AppCompatEditText;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 209
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatEditText;

    invoke-direct {v0, p1, p2}, Lccsanandroidx/appcompat/widget/AppCompatEditText;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createImageButton(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/AppCompatImageButton;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 219
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatImageButton;

    invoke-direct {v0, p1, p2}, Lccsanandroidx/appcompat/widget/AppCompatImageButton;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createImageView(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/AppCompatImageView;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 199
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v0, p1, p2}, Lccsanandroidx/appcompat/widget/AppCompatImageView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createMultiAutoCompleteTextView(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 246
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;

    invoke-direct {v0, p1, p2}, Lccsanandroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createRadioButton(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/AppCompatRadioButton;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 229
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatRadioButton;

    invoke-direct {v0, p1, p2}, Lccsanandroidx/appcompat/widget/AppCompatRadioButton;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createRatingBar(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/AppCompatRatingBar;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 251
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatRatingBar;

    invoke-direct {v0, p1, p2}, Lccsanandroidx/appcompat/widget/AppCompatRatingBar;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createSeekBar(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/AppCompatSeekBar;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 256
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatSeekBar;

    invoke-direct {v0, p1, p2}, Lccsanandroidx/appcompat/widget/AppCompatSeekBar;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createSpinner(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/AppCompatSpinner;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 214
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    invoke-direct {v0, p1, p2}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createTextView(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/AppCompatTextView;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 194
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v0, p1, p2}, Lccsanandroidx/appcompat/widget/AppCompatTextView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createToggleButton(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/AppCompatToggleButton;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 261
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatToggleButton;

    invoke-direct {v0, p1, p2}, Lccsanandroidx/appcompat/widget/AppCompatToggleButton;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createView(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/util/AttributeSet;)Lccsanandroid/view/View;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 273
    const/4 v0, 0x0

    return-object v0
.end method

.method final createView(Lccsanandroid/view/View;Ljava/lang/String;Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;ZZZZ)Lccsanandroid/view/View;
    .locals 4
    .param p1, "parent"    # Lccsanandroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Lccsanandroid/content/Context;
    .param p4, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p5, "inheritContext"    # Z
    .param p6, "readAndroidTheme"    # Z
    .param p7, "readAppTheme"    # Z
    .param p8, "wrapContext"    # Z

    .line 95
    move-object v0, p3

    .line 99
    .local v0, "originalContext":Lccsanandroid/content/Context;
    if-eqz p5, :cond_0

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object p3

    .line 102
    :cond_0
    if-nez p6, :cond_1

    if-eqz p7, :cond_2

    .line 104
    :cond_1
    invoke-static {p3, p4, p6, p7}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->themifyContext(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;ZZ)Lccsanandroid/content/Context;

    move-result-object p3

    .line 106
    :cond_2
    if-eqz p8, :cond_3

    .line 107
    invoke-static {p3}, Lccsanandroidx/appcompat/widget/TintContextWrapper;->wrap(Lccsanandroid/content/Context;)Lccsanandroid/content/Context;

    move-result-object p3

    .line 110
    :cond_3
    const/4 v1, 0x0

    .line 113
    .local v1, "view":Lccsanandroid/view/View;
    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_4
    goto/16 :goto_0

    :sswitch_0
    const-string v3, "Button"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x2

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "EditText"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x3

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "CheckBox"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x6

    goto/16 :goto_0

    :sswitch_3
    const-string v3, "AutoCompleteTextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v3, "ImageView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_5
    const-string v3, "ToggleButton"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v2, 0xd

    goto :goto_0

    :sswitch_6
    const-string v3, "RadioButton"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x7

    goto :goto_0

    :sswitch_7
    const-string v3, "Spinner"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_8
    const-string v3, "SeekBar"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v2, 0xc

    goto :goto_0

    :sswitch_9
    const-string v3, "ImageButton"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_a
    const-string v3, "TextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_b
    const-string v3, "MultiAutoCompleteTextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v2, 0xa

    goto :goto_0

    :sswitch_c
    const-string v3, "CheckedTextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v2, 0x8

    goto :goto_0

    :sswitch_d
    const-string v3, "RatingBar"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v2, 0xb

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 175
    invoke-virtual {p0, p3, p2, p4}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->createView(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/util/AttributeSet;)Lccsanandroid/view/View;

    move-result-object v1

    goto/16 :goto_1

    .line 167
    :pswitch_0
    invoke-virtual {p0, p3, p4}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->createToggleButton(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/AppCompatToggleButton;

    move-result-object v1

    .line 168
    invoke-direct {p0, v1, p2}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Lccsanandroid/view/View;Ljava/lang/String;)V

    .line 169
    goto/16 :goto_1

    .line 163
    :pswitch_1
    invoke-virtual {p0, p3, p4}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->createSeekBar(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/AppCompatSeekBar;

    move-result-object v1

    .line 164
    invoke-direct {p0, v1, p2}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Lccsanandroid/view/View;Ljava/lang/String;)V

    .line 165
    goto :goto_1

    .line 159
    :pswitch_2
    invoke-virtual {p0, p3, p4}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->createRatingBar(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/AppCompatRatingBar;

    move-result-object v1

    .line 160
    invoke-direct {p0, v1, p2}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Lccsanandroid/view/View;Ljava/lang/String;)V

    .line 161
    goto :goto_1

    .line 155
    :pswitch_3
    invoke-virtual {p0, p3, p4}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->createMultiAutoCompleteTextView(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;

    move-result-object v1

    .line 156
    invoke-direct {p0, v1, p2}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Lccsanandroid/view/View;Ljava/lang/String;)V

    .line 157
    goto :goto_1

    .line 151
    :pswitch_4
    invoke-virtual {p0, p3, p4}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->createAutoCompleteTextView(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    move-result-object v1

    .line 152
    invoke-direct {p0, v1, p2}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Lccsanandroid/view/View;Ljava/lang/String;)V

    .line 153
    goto :goto_1

    .line 147
    :pswitch_5
    invoke-virtual {p0, p3, p4}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->createCheckedTextView(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/AppCompatCheckedTextView;

    move-result-object v1

    .line 148
    invoke-direct {p0, v1, p2}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Lccsanandroid/view/View;Ljava/lang/String;)V

    .line 149
    goto :goto_1

    .line 143
    :pswitch_6
    invoke-virtual {p0, p3, p4}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->createRadioButton(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/AppCompatRadioButton;

    move-result-object v1

    .line 144
    invoke-direct {p0, v1, p2}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Lccsanandroid/view/View;Ljava/lang/String;)V

    .line 145
    goto :goto_1

    .line 139
    :pswitch_7
    invoke-virtual {p0, p3, p4}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->createCheckBox(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v1

    .line 140
    invoke-direct {p0, v1, p2}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Lccsanandroid/view/View;Ljava/lang/String;)V

    .line 141
    goto :goto_1

    .line 135
    :pswitch_8
    invoke-virtual {p0, p3, p4}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->createImageButton(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/AppCompatImageButton;

    move-result-object v1

    .line 136
    invoke-direct {p0, v1, p2}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Lccsanandroid/view/View;Ljava/lang/String;)V

    .line 137
    goto :goto_1

    .line 131
    :pswitch_9
    invoke-virtual {p0, p3, p4}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->createSpinner(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    move-result-object v1

    .line 132
    invoke-direct {p0, v1, p2}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Lccsanandroid/view/View;Ljava/lang/String;)V

    .line 133
    goto :goto_1

    .line 127
    :pswitch_a
    invoke-virtual {p0, p3, p4}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->createEditText(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/AppCompatEditText;

    move-result-object v1

    .line 128
    invoke-direct {p0, v1, p2}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Lccsanandroid/view/View;Ljava/lang/String;)V

    .line 129
    goto :goto_1

    .line 123
    :pswitch_b
    invoke-virtual {p0, p3, p4}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->createButton(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/AppCompatButton;

    move-result-object v1

    .line 124
    invoke-direct {p0, v1, p2}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Lccsanandroid/view/View;Ljava/lang/String;)V

    .line 125
    goto :goto_1

    .line 119
    :pswitch_c
    invoke-virtual {p0, p3, p4}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->createImageView(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/AppCompatImageView;

    move-result-object v1

    .line 120
    invoke-direct {p0, v1, p2}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Lccsanandroid/view/View;Ljava/lang/String;)V

    .line 121
    goto :goto_1

    .line 115
    :pswitch_d
    invoke-virtual {p0, p3, p4}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->createTextView(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/AppCompatTextView;

    move-result-object v1

    .line 116
    invoke-direct {p0, v1, p2}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Lccsanandroid/view/View;Ljava/lang/String;)V

    .line 117
    nop

    .line 178
    :goto_1
    if-nez v1, :cond_5

    if-eq v0, p3, :cond_5

    .line 181
    invoke-direct {p0, p3, p2, p4}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->createViewFromTag(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/util/AttributeSet;)Lccsanandroid/view/View;

    move-result-object v1

    .line 184
    :cond_5
    if-eqz v1, :cond_6

    .line 186
    invoke-direct {p0, v1, p4}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;->checkOnClickListener(Lccsanandroid/view/View;Lccsanandroid/util/AttributeSet;)V

    .line 189
    :cond_6
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_d
        -0x56c015e7 -> :sswitch_c
        -0x503aa7ad -> :sswitch_b
        -0x37f7066e -> :sswitch_a
        -0x37e04bb3 -> :sswitch_9
        -0x274065a5 -> :sswitch_8
        -0x1440b607 -> :sswitch_7
        0x2e46a6ed -> :sswitch_6
        0x2fa453c6 -> :sswitch_5
        0x431b5280 -> :sswitch_4
        0x5445f9ba -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
