.class public final Lccsancom/google/android/material/datepicker/MaterialDatePicker;
.super Lccsanandroidx/fragment/app/DialogFragment;
.source "MaterialDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/datepicker/MaterialDatePicker$Builder;,
        Lccsancom/google/android/material/datepicker/MaterialDatePicker$InputMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lccsanandroidx/fragment/app/DialogFragment;"
    }
.end annotation


# static fields
.field private static final CALENDAR_CONSTRAINTS_KEY:Ljava/lang/String; = "CALENDAR_CONSTRAINTS_KEY"

.field static final CANCEL_BUTTON_TAG:Ljava/lang/Object;

.field static final CONFIRM_BUTTON_TAG:Ljava/lang/Object;

.field private static final DATE_SELECTOR_KEY:Ljava/lang/String; = "DATE_SELECTOR_KEY"

.field public static final INPUT_MODE_CALENDAR:I = 0x0

.field private static final INPUT_MODE_KEY:Ljava/lang/String; = "INPUT_MODE_KEY"

.field public static final INPUT_MODE_TEXT:I = 0x1

.field private static final OVERRIDE_THEME_RES_ID:Ljava/lang/String; = "OVERRIDE_THEME_RES_ID"

.field private static final TITLE_TEXT_KEY:Ljava/lang/String; = "TITLE_TEXT_KEY"

.field private static final TITLE_TEXT_RES_ID_KEY:Ljava/lang/String; = "TITLE_TEXT_RES_ID_KEY"

.field static final TOGGLE_BUTTON_TAG:Ljava/lang/Object;


# instance fields
.field private background:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

.field private calendar:Lccsancom/google/android/material/datepicker/MaterialCalendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/android/material/datepicker/MaterialCalendar<",
            "TS;>;"
        }
    .end annotation
.end field

.field private calendarConstraints:Lccsancom/google/android/material/datepicker/CalendarConstraints;

.field private confirmButton:Lccsanandroid/widget/Button;

.field private dateSelector:Lccsancom/google/android/material/datepicker/DateSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/android/material/datepicker/DateSelector<",
            "TS;>;"
        }
    .end annotation
.end field

.field private fullscreen:Z

.field private headerSelectionText:Lccsanandroid/widget/TextView;

.field private headerToggleButton:Lccsancom/google/android/material/internal/CheckableImageButton;

.field private inputMode:I

.field private final onCancelListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lccsanandroid/content/DialogInterface$OnCancelListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onDismissListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lccsanandroid/content/DialogInterface$OnDismissListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onNegativeButtonClickListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lccsanandroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onPositiveButtonClickListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lccsancom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener<",
            "-TS;>;>;"
        }
    .end annotation
.end field

.field private overrideThemeResId:I

.field private pickerFragment:Lccsancom/google/android/material/datepicker/PickerFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/android/material/datepicker/PickerFragment<",
            "TS;>;"
        }
    .end annotation
.end field

.field private titleText:Ljava/lang/CharSequence;

.field private titleTextResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    const-string v0, "CONFIRM_BUTTON_TAG"

    sput-object v0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->CONFIRM_BUTTON_TAG:Ljava/lang/Object;

    .line 72
    const-string v0, "CANCEL_BUTTON_TAG"

    sput-object v0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->CANCEL_BUTTON_TAG:Ljava/lang/Object;

    .line 73
    const-string v0, "TOGGLE_BUTTON_TAG"

    sput-object v0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->TOGGLE_BUTTON_TAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    invoke-direct {p0}, Lccsanandroidx/fragment/app/DialogFragment;-><init>()V

    .line 108
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->onPositiveButtonClickListeners:Ljava/util/LinkedHashSet;

    .line 110
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->onNegativeButtonClickListeners:Ljava/util/LinkedHashSet;

    .line 112
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->onCancelListeners:Ljava/util/LinkedHashSet;

    .line 114
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->onDismissListeners:Ljava/util/LinkedHashSet;

    return-void
.end method

.method static synthetic access$000(Lccsancom/google/android/material/datepicker/MaterialDatePicker;)Ljava/util/LinkedHashSet;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/datepicker/MaterialDatePicker;

    .line 62
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->onPositiveButtonClickListeners:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method static synthetic access$100(Lccsancom/google/android/material/datepicker/MaterialDatePicker;)Ljava/util/LinkedHashSet;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/datepicker/MaterialDatePicker;

    .line 62
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->onNegativeButtonClickListeners:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method static synthetic access$200(Lccsancom/google/android/material/datepicker/MaterialDatePicker;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/datepicker/MaterialDatePicker;

    .line 62
    invoke-direct {p0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->updateHeader()V

    return-void
.end method

.method static synthetic access$300(Lccsancom/google/android/material/datepicker/MaterialDatePicker;)Lccsancom/google/android/material/datepicker/DateSelector;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/datepicker/MaterialDatePicker;

    .line 62
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->dateSelector:Lccsancom/google/android/material/datepicker/DateSelector;

    return-object v0
.end method

.method static synthetic access$400(Lccsancom/google/android/material/datepicker/MaterialDatePicker;)Lccsanandroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/datepicker/MaterialDatePicker;

    .line 62
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Lccsanandroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lccsancom/google/android/material/datepicker/MaterialDatePicker;)Lccsancom/google/android/material/internal/CheckableImageButton;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/datepicker/MaterialDatePicker;

    .line 62
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lccsancom/google/android/material/internal/CheckableImageButton;

    return-object v0
.end method

.method static synthetic access$600(Lccsancom/google/android/material/datepicker/MaterialDatePicker;Lccsancom/google/android/material/internal/CheckableImageButton;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/datepicker/MaterialDatePicker;
    .param p1, "x1"    # Lccsancom/google/android/material/internal/CheckableImageButton;

    .line 62
    invoke-direct {p0, p1}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->updateToggleContentDescription(Lccsancom/google/android/material/internal/CheckableImageButton;)V

    return-void
.end method

.method static synthetic access$700(Lccsancom/google/android/material/datepicker/MaterialDatePicker;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/datepicker/MaterialDatePicker;

    .line 62
    invoke-direct {p0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->startPickerFragment()V

    return-void
.end method

.method private static createHeaderToggleDrawable(Lccsanandroid/content/Context;)Lccsanandroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 395
    new-instance v0, Lccsanandroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Lccsanandroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 396
    .local v0, "toggleDrawable":Lccsanandroid/graphics/drawable/StateListDrawable;
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100a0

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lccsancom/google/android/material/R$drawable;->material_ic_calendar_black_24dp:I

    .line 398
    invoke-static {p0, v2}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 396
    invoke-virtual {v0, v1, v2}, Lccsanandroid/graphics/drawable/StateListDrawable;->addState([ILccsanandroid/graphics/drawable/Drawable;)V

    .line 399
    new-array v1, v3, [I

    sget v2, Lccsancom/google/android/material/R$drawable;->material_ic_edit_black_24dp:I

    .line 401
    invoke-static {p0, v2}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 399
    invoke-virtual {v0, v1, v2}, Lccsanandroid/graphics/drawable/StateListDrawable;->addState([ILccsanandroid/graphics/drawable/Drawable;)V

    .line 402
    return-object v0
.end method

.method private static getDialogPickerHeight(Lccsanandroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 425
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    .line 426
    .local v0, "resources":Lccsanandroid/content/res/Resources;
    sget v1, Lccsancom/google/android/material/R$dimen;->mtrl_calendar_navigation_height:I

    .line 427
    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lccsancom/google/android/material/R$dimen;->mtrl_calendar_navigation_top_padding:I

    .line 428
    invoke-virtual {v0, v2}, Lccsanandroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lccsancom/google/android/material/R$dimen;->mtrl_calendar_navigation_bottom_padding:I

    .line 429
    invoke-virtual {v0, v2}, Lccsanandroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 430
    .local v1, "navigationHeight":I
    sget v2, Lccsancom/google/android/material/R$dimen;->mtrl_calendar_days_of_week_height:I

    .line 431
    invoke-virtual {v0, v2}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 432
    .local v2, "daysOfWeekHeight":I
    sget v3, Lccsancom/google/android/material/datepicker/MonthAdapter;->MAXIMUM_WEEKS:I

    sget v4, Lccsancom/google/android/material/R$dimen;->mtrl_calendar_day_height:I

    .line 434
    invoke-virtual {v0, v4}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int v3, v3, v4

    sget v4, Lccsancom/google/android/material/datepicker/MonthAdapter;->MAXIMUM_WEEKS:I

    add-int/lit8 v4, v4, -0x1

    sget v5, Lccsancom/google/android/material/R$dimen;->mtrl_calendar_month_vertical_padding:I

    .line 436
    invoke-virtual {v0, v5}, Lccsanandroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    mul-int v4, v4, v5

    add-int/2addr v3, v4

    .line 437
    .local v3, "calendarHeight":I
    sget v4, Lccsancom/google/android/material/R$dimen;->mtrl_calendar_bottom_padding:I

    invoke-virtual {v0, v4}, Lccsanandroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 438
    .local v4, "calendarPadding":I
    add-int v5, v1, v2

    add-int/2addr v5, v3

    add-int/2addr v5, v4

    return v5
.end method

.method private static getPaddedPickerWidth(Lccsanandroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 442
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    .line 443
    .local v0, "resources":Lccsanandroid/content/res/Resources;
    sget v1, Lccsancom/google/android/material/R$dimen;->mtrl_calendar_content_padding:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 444
    .local v1, "padding":I
    invoke-static {}, Lccsancom/google/android/material/datepicker/Month;->current()Lccsancom/google/android/material/datepicker/Month;

    move-result-object v2

    iget v2, v2, Lccsancom/google/android/material/datepicker/Month;->daysInWeek:I

    .line 445
    .local v2, "daysInWeek":I
    sget v3, Lccsancom/google/android/material/R$dimen;->mtrl_calendar_day_width:I

    invoke-virtual {v0, v3}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 446
    .local v3, "dayWidth":I
    sget v4, Lccsancom/google/android/material/R$dimen;->mtrl_calendar_month_horizontal_padding:I

    .line 447
    invoke-virtual {v0, v4}, Lccsanandroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 448
    .local v4, "horizontalSpace":I
    mul-int/lit8 v5, v1, 0x2

    mul-int v6, v2, v3

    add-int/2addr v5, v6

    add-int/lit8 v6, v2, -0x1

    mul-int v6, v6, v4

    add-int/2addr v5, v6

    return v5
.end method

.method private getThemeResId(Lccsanandroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 175
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->overrideThemeResId:I

    if-eqz v0, :cond_0

    .line 176
    return v0

    .line 178
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->dateSelector:Lccsancom/google/android/material/datepicker/DateSelector;

    invoke-interface {v0, p1}, Lccsancom/google/android/material/datepicker/DateSelector;->getDefaultThemeResId(Lccsanandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private initHeaderToggle(Lccsanandroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 362
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lccsancom/google/android/material/internal/CheckableImageButton;

    sget-object v1, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->TOGGLE_BUTTON_TAG:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/internal/CheckableImageButton;->setTag(Ljava/lang/Object;)V

    .line 363
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lccsancom/google/android/material/internal/CheckableImageButton;

    invoke-static {p1}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->createHeaderToggleDrawable(Lccsanandroid/content/Context;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 364
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lccsancom/google/android/material/internal/CheckableImageButton;

    iget v1, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->inputMode:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lccsancom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 368
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lccsancom/google/android/material/internal/CheckableImageButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsanandroidx/core/view/ViewCompat;->setAccessibilityDelegate(Lccsanandroid/view/View;Lccsanandroidx/core/view/AccessibilityDelegateCompat;)V

    .line 369
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lccsancom/google/android/material/internal/CheckableImageButton;

    invoke-direct {p0, v0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->updateToggleContentDescription(Lccsancom/google/android/material/internal/CheckableImageButton;)V

    .line 370
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lccsancom/google/android/material/internal/CheckableImageButton;

    new-instance v1, Lccsancom/google/android/material/datepicker/MaterialDatePicker$4;

    invoke-direct {v1, p0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker$4;-><init>(Lccsancom/google/android/material/datepicker/MaterialDatePicker;)V

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/internal/CheckableImageButton;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 382
    return-void
.end method

.method static isFullscreen(Lccsanandroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 406
    const v0, 0x101020d

    invoke-static {p0, v0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->readMaterialCalendarStyleBoolean(Lccsanandroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method static isNestedScrollable(Lccsanandroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 410
    sget v0, Lccsancom/google/android/material/R$attr;->nestedScrollable:I

    invoke-static {p0, v0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->readMaterialCalendarStyleBoolean(Lccsanandroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method static newInstance(Lccsancom/google/android/material/datepicker/MaterialDatePicker$Builder;)Lccsancom/google/android/material/datepicker/MaterialDatePicker;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/android/material/datepicker/MaterialDatePicker$Builder<",
            "TS;>;)",
            "Lccsancom/google/android/material/datepicker/MaterialDatePicker<",
            "TS;>;"
        }
    .end annotation

    .line 134
    .local p0, "options":Lccsancom/google/android/material/datepicker/MaterialDatePicker$Builder;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker$Builder<TS;>;"
    new-instance v0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;

    invoke-direct {v0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;-><init>()V

    .line 135
    .local v0, "materialDatePickerDialogFragment":Lccsancom/google/android/material/datepicker/MaterialDatePicker;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    new-instance v1, Lccsanandroid/os/Bundle;

    invoke-direct {v1}, Lccsanandroid/os/Bundle;-><init>()V

    .line 136
    .local v1, "args":Lccsanandroid/os/Bundle;
    iget v2, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker$Builder;->overrideThemeResId:I

    const-string v3, "OVERRIDE_THEME_RES_ID"

    invoke-virtual {v1, v3, v2}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    iget-object v2, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker$Builder;->dateSelector:Lccsancom/google/android/material/datepicker/DateSelector;

    const-string v3, "DATE_SELECTOR_KEY"

    invoke-virtual {v1, v3, v2}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 138
    iget-object v2, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker$Builder;->calendarConstraints:Lccsancom/google/android/material/datepicker/CalendarConstraints;

    const-string v3, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {v1, v3, v2}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 139
    iget v2, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker$Builder;->titleTextResId:I

    const-string v3, "TITLE_TEXT_RES_ID_KEY"

    invoke-virtual {v1, v3, v2}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    iget-object v2, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker$Builder;->titleText:Ljava/lang/CharSequence;

    const-string v3, "TITLE_TEXT_KEY"

    invoke-virtual {v1, v3, v2}, Lccsanandroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 141
    iget v2, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker$Builder;->inputMode:I

    const-string v3, "INPUT_MODE_KEY"

    invoke-virtual {v1, v3, v2}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    invoke-virtual {v0, v1}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->setArguments(Lccsanandroid/os/Bundle;)V

    .line 143
    return-object v0
.end method

.method static readMaterialCalendarStyleBoolean(Lccsanandroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "attributeResId"    # I

    .line 414
    sget v0, Lccsancom/google/android/material/R$attr;->materialCalendarStyle:I

    const-class v1, Lccsancom/google/android/material/datepicker/MaterialCalendar;

    .line 416
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 415
    invoke-static {p0, v0, v1}, Lccsancom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Lccsanandroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 417
    .local v0, "calendarStyle":I
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 418
    .local v1, "attrs":[I
    invoke-virtual {p0, v0, v1}, Lccsanandroid/content/Context;->obtainStyledAttributes(I[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v3

    .line 419
    .local v3, "a":Lccsanandroid/content/res/TypedArray;
    invoke-virtual {v3, v2, v2}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 420
    .local v2, "attributeValue":Z
    invoke-virtual {v3}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 421
    return v2
.end method

.method private startPickerFragment()V
    .locals 4

    .line 334
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    invoke-virtual {p0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->requireContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->getThemeResId(Lccsanandroid/content/Context;)I

    move-result v0

    .line 335
    .local v0, "themeResId":I
    iget-object v1, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->dateSelector:Lccsancom/google/android/material/datepicker/DateSelector;

    iget-object v2, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->calendarConstraints:Lccsancom/google/android/material/datepicker/CalendarConstraints;

    invoke-static {v1, v0, v2}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->newInstance(Lccsancom/google/android/material/datepicker/DateSelector;ILccsancom/google/android/material/datepicker/CalendarConstraints;)Lccsancom/google/android/material/datepicker/MaterialCalendar;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->calendar:Lccsancom/google/android/material/datepicker/MaterialCalendar;

    .line 336
    iget-object v1, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lccsancom/google/android/material/internal/CheckableImageButton;

    .line 337
    invoke-virtual {v1}, Lccsancom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->dateSelector:Lccsancom/google/android/material/datepicker/DateSelector;

    iget-object v2, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->calendarConstraints:Lccsancom/google/android/material/datepicker/CalendarConstraints;

    .line 338
    invoke-static {v1, v0, v2}, Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;->newInstance(Lccsancom/google/android/material/datepicker/DateSelector;ILccsancom/google/android/material/datepicker/CalendarConstraints;)Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->calendar:Lccsancom/google/android/material/datepicker/MaterialCalendar;

    :goto_0
    iput-object v1, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->pickerFragment:Lccsancom/google/android/material/datepicker/PickerFragment;

    .line 340
    invoke-direct {p0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->updateHeader()V

    .line 342
    invoke-virtual {p0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->getChildFragmentManager()Lccsanandroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroidx/fragment/app/FragmentManager;->beginTransaction()Lccsanandroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 343
    .local v1, "fragmentTransaction":Lccsanandroidx/fragment/app/FragmentTransaction;
    sget v2, Lccsancom/google/android/material/R$id;->mtrl_calendar_frame:I

    iget-object v3, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->pickerFragment:Lccsancom/google/android/material/datepicker/PickerFragment;

    invoke-virtual {v1, v2, v3}, Lccsanandroidx/fragment/app/FragmentTransaction;->replace(ILccsanandroidx/fragment/app/Fragment;)Lccsanandroidx/fragment/app/FragmentTransaction;

    .line 344
    invoke-virtual {v1}, Lccsanandroidx/fragment/app/FragmentTransaction;->commitNow()V

    .line 346
    iget-object v2, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->pickerFragment:Lccsancom/google/android/material/datepicker/PickerFragment;

    new-instance v3, Lccsancom/google/android/material/datepicker/MaterialDatePicker$3;

    invoke-direct {v3, p0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker$3;-><init>(Lccsancom/google/android/material/datepicker/MaterialDatePicker;)V

    invoke-virtual {v2, v3}, Lccsancom/google/android/material/datepicker/PickerFragment;->addOnSelectionChangedListener(Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;)Z

    .line 359
    return-void
.end method

.method public static thisMonthInUtcMilliseconds()J
    .locals 2

    .line 96
    invoke-static {}, Lccsancom/google/android/material/datepicker/Month;->current()Lccsancom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-wide v0, v0, Lccsancom/google/android/material/datepicker/Month;->timeInMillis:J

    return-wide v0
.end method

.method public static todayInUtcMilliseconds()J
    .locals 2

    .line 89
    invoke-static {}, Lccsancom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private updateHeader()V
    .locals 5

    .line 327
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    invoke-virtual {p0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->getHeaderText()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "headerText":Ljava/lang/String;
    iget-object v1, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->headerSelectionText:Lccsanandroid/widget/TextView;

    sget v2, Lccsancom/google/android/material/R$string;->mtrl_picker_announce_current_selection:I

    .line 329
    invoke-virtual {p0, v2}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 328
    invoke-virtual {v1, v2}, Lccsanandroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v1, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->headerSelectionText:Lccsanandroid/widget/TextView;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    return-void
.end method

.method private updateToggleContentDescription(Lccsancom/google/android/material/internal/CheckableImageButton;)V
    .locals 2
    .param p1, "toggle"    # Lccsancom/google/android/material/internal/CheckableImageButton;

    .line 385
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lccsancom/google/android/material/internal/CheckableImageButton;

    .line 386
    invoke-virtual {v0}, Lccsancom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {p1}, Lccsancom/google/android/material/internal/CheckableImageButton;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    sget v1, Lccsancom/google/android/material/R$string;->mtrl_picker_toggle_to_calendar_input_mode:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {p1}, Lccsancom/google/android/material/internal/CheckableImageButton;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    sget v1, Lccsancom/google/android/material/R$string;->mtrl_picker_toggle_to_text_input_mode:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    nop

    .line 389
    .local v0, "contentDescription":Ljava/lang/String;
    iget-object v1, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lccsancom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1, v0}, Lccsancom/google/android/material/internal/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 390
    return-void
.end method


# virtual methods
.method public addOnCancelListener(Lccsanandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 1
    .param p1, "onCancelListener"    # Lccsanandroid/content/DialogInterface$OnCancelListener;

    .line 502
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->onCancelListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addOnDismissListener(Lccsanandroid/content/DialogInterface$OnDismissListener;)Z
    .locals 1
    .param p1, "onDismissListener"    # Lccsanandroid/content/DialogInterface$OnDismissListener;

    .line 520
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->onDismissListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addOnNegativeButtonClickListener(Lccsanandroid/view/View$OnClickListener;)Z
    .locals 1
    .param p1, "onNegativeButtonClickListener"    # Lccsanandroid/view/View$OnClickListener;

    .line 476
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->onNegativeButtonClickListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addOnPositiveButtonClickListener(Lccsancom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener<",
            "-TS;>;)Z"
        }
    .end annotation

    .line 454
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    .local p1, "onPositiveButtonClickListener":Lccsancom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener;, "Lccsancom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener<-TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->onPositiveButtonClickListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clearOnCancelListeners()V
    .locals 1

    .line 512
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->onCancelListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 513
    return-void
.end method

.method public clearOnDismissListeners()V
    .locals 1

    .line 530
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->onDismissListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 531
    return-void
.end method

.method public clearOnNegativeButtonClickListeners()V
    .locals 1

    .line 492
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->onNegativeButtonClickListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 493
    return-void
.end method

.method public clearOnPositiveButtonClickListeners()V
    .locals 1

    .line 470
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->onPositiveButtonClickListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 471
    return-void
.end method

.method public getHeaderText()Ljava/lang/String;
    .locals 2

    .line 105
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->dateSelector:Lccsancom/google/android/material/datepicker/DateSelector;

    invoke-virtual {p0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/google/android/material/datepicker/DateSelector;->getSelectionDisplayString(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSelection()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 323
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->dateSelector:Lccsancom/google/android/material/datepicker/DateSelector;

    invoke-interface {v0}, Lccsancom/google/android/material/datepicker/DateSelector;->getSelection()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final onCancel(Lccsanandroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Lccsanandroid/content/DialogInterface;

    .line 299
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->onCancelListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/content/DialogInterface$OnCancelListener;

    .line 300
    .local v1, "listener":Lccsanandroid/content/DialogInterface$OnCancelListener;
    invoke-interface {v1, p1}, Lccsanandroid/content/DialogInterface$OnCancelListener;->onCancel(Lccsanandroid/content/DialogInterface;)V

    .line 301
    .end local v1    # "listener":Lccsanandroid/content/DialogInterface$OnCancelListener;
    goto :goto_0

    .line 302
    :cond_0
    invoke-super {p0, p1}, Lccsanandroidx/fragment/app/DialogFragment;->onCancel(Lccsanandroid/content/DialogInterface;)V

    .line 303
    return-void
.end method

.method public final onCreate(Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Lccsanandroid/os/Bundle;

    .line 164
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    invoke-super {p0, p1}, Lccsanandroidx/fragment/app/DialogFragment;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 165
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->getArguments()Lccsanandroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 166
    .local v0, "activeBundle":Lccsanandroid/os/Bundle;
    :goto_0
    const-string v1, "OVERRIDE_THEME_RES_ID"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->overrideThemeResId:I

    .line 167
    const-string v1, "DATE_SELECTOR_KEY"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/datepicker/DateSelector;

    iput-object v1, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->dateSelector:Lccsancom/google/android/material/datepicker/DateSelector;

    .line 168
    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/datepicker/CalendarConstraints;

    iput-object v1, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->calendarConstraints:Lccsancom/google/android/material/datepicker/CalendarConstraints;

    .line 169
    const-string v1, "TITLE_TEXT_RES_ID_KEY"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->titleTextResId:I

    .line 170
    const-string v1, "TITLE_TEXT_KEY"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->titleText:Ljava/lang/CharSequence;

    .line 171
    const-string v1, "INPUT_MODE_KEY"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->inputMode:I

    .line 172
    return-void
.end method

.method public final onCreateDialog(Lccsanandroid/os/Bundle;)Lccsanandroid/app/Dialog;
    .locals 7
    .param p1, "bundle"    # Lccsanandroid/os/Bundle;

    .line 184
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    new-instance v0, Lccsanandroid/app/Dialog;

    invoke-virtual {p0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->requireContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->requireContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->getThemeResId(Lccsanandroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lccsanandroid/app/Dialog;-><init>(Lccsanandroid/content/Context;I)V

    .line 185
    .local v0, "dialog":Lccsanandroid/app/Dialog;
    invoke-virtual {v0}, Lccsanandroid/app/Dialog;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    .line 186
    .local v1, "context":Lccsanandroid/content/Context;
    invoke-static {v1}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->isFullscreen(Lccsanandroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->fullscreen:Z

    .line 187
    sget v2, Lccsancom/google/android/material/R$attr;->colorSurface:I

    const-class v3, Lccsancom/google/android/material/datepicker/MaterialDatePicker;

    .line 189
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-static {v1, v2, v3}, Lccsancom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Lccsanandroid/content/Context;ILjava/lang/String;)I

    move-result v2

    .line 190
    .local v2, "surfaceColor":I
    new-instance v3, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    sget v4, Lccsancom/google/android/material/R$attr;->materialCalendarStyle:I

    sget v5, Lccsancom/google/android/material/R$style;->Widget_MaterialComponents_MaterialCalendar:I

    const/4 v6, 0x0

    invoke-direct {v3, v1, v6, v4, v5}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)V

    iput-object v3, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->background:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    .line 196
    invoke-virtual {v3, v1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Lccsanandroid/content/Context;)V

    .line 197
    iget-object v3, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->background:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {v2}, Lccsanandroid/content/res/ColorStateList;->valueOf(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 198
    iget-object v3, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->background:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lccsanandroid/app/Dialog;->getWindow()Lccsanandroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lccsanandroidx/core/view/ViewCompat;->getElevation(Lccsanandroid/view/View;)F

    move-result v4

    invoke-virtual {v3, v4}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 199
    return-object v0
.end method

.method public final onCreateView(Lccsanandroid/view/LayoutInflater;Lccsanandroid/view/ViewGroup;Lccsanandroid/os/Bundle;)Lccsanandroid/view/View;
    .locals 8
    .param p1, "layoutInflater"    # Lccsanandroid/view/LayoutInflater;
    .param p2, "viewGroup"    # Lccsanandroid/view/ViewGroup;
    .param p3, "bundle"    # Lccsanandroid/os/Bundle;

    .line 208
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-boolean v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->fullscreen:Z

    if-eqz v0, :cond_0

    sget v0, Lccsancom/google/android/material/R$layout;->mtrl_picker_fullscreen:I

    goto :goto_0

    :cond_0
    sget v0, Lccsancom/google/android/material/R$layout;->mtrl_picker_dialog:I

    .line 209
    .local v0, "layout":I
    :goto_0
    invoke-virtual {p1, v0, p2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object v1

    .line 210
    .local v1, "root":Lccsanandroid/view/View;
    invoke-virtual {v1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    .line 212
    .local v2, "context":Lccsanandroid/content/Context;
    iget-boolean v3, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->fullscreen:Z

    if-eqz v3, :cond_1

    .line 213
    sget v3, Lccsancom/google/android/material/R$id;->mtrl_calendar_frame:I

    invoke-virtual {v1, v3}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v3

    .line 214
    .local v3, "frame":Lccsanandroid/view/View;
    new-instance v4, Lccsanandroid/widget/LinearLayout$LayoutParams;

    .line 215
    invoke-static {v2}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->getPaddedPickerWidth(Lccsanandroid/content/Context;)I

    move-result v5

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 214
    invoke-virtual {v3, v4}, Lccsanandroid/view/View;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 216
    .end local v3    # "frame":Lccsanandroid/view/View;
    goto :goto_1

    .line 217
    :cond_1
    sget v3, Lccsancom/google/android/material/R$id;->mtrl_calendar_main_pane:I

    invoke-virtual {v1, v3}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v3

    .line 218
    .local v3, "pane":Lccsanandroid/view/View;
    sget v4, Lccsancom/google/android/material/R$id;->mtrl_calendar_frame:I

    invoke-virtual {v1, v4}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v4

    .line 219
    .local v4, "frame":Lccsanandroid/view/View;
    new-instance v5, Lccsanandroid/widget/LinearLayout$LayoutParams;

    .line 220
    invoke-static {v2}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->getPaddedPickerWidth(Lccsanandroid/content/Context;)I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 219
    invoke-virtual {v3, v5}, Lccsanandroid/view/View;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 221
    invoke-virtual {p0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->requireContext()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->getDialogPickerHeight(Lccsanandroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Lccsanandroid/view/View;->setMinimumHeight(I)V

    .line 224
    .end local v3    # "pane":Lccsanandroid/view/View;
    .end local v4    # "frame":Lccsanandroid/view/View;
    :goto_1
    sget v3, Lccsancom/google/android/material/R$id;->mtrl_picker_header_selection_text:I

    invoke-virtual {v1, v3}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v3

    check-cast v3, Lccsanandroid/widget/TextView;

    iput-object v3, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->headerSelectionText:Lccsanandroid/widget/TextView;

    .line 225
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lccsanandroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Lccsanandroid/view/View;I)V

    .line 227
    sget v3, Lccsancom/google/android/material/R$id;->mtrl_picker_header_toggle:I

    invoke-virtual {v1, v3}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v3

    check-cast v3, Lccsancom/google/android/material/internal/CheckableImageButton;

    iput-object v3, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->headerToggleButton:Lccsancom/google/android/material/internal/CheckableImageButton;

    .line 228
    sget v3, Lccsancom/google/android/material/R$id;->mtrl_picker_title_text:I

    invoke-virtual {v1, v3}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v3

    check-cast v3, Lccsanandroid/widget/TextView;

    .line 229
    .local v3, "titleTextView":Lccsanandroid/widget/TextView;
    iget-object v5, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->titleText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_2

    .line 230
    invoke-virtual {v3, v5}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 232
    :cond_2
    iget v5, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->titleTextResId:I

    invoke-virtual {v3, v5}, Lccsanandroid/widget/TextView;->setText(I)V

    .line 234
    :goto_2
    invoke-direct {p0, v2}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->initHeaderToggle(Lccsanandroid/content/Context;)V

    .line 236
    sget v5, Lccsancom/google/android/material/R$id;->confirm_button:I

    invoke-virtual {v1, v5}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v5

    check-cast v5, Lccsanandroid/widget/Button;

    iput-object v5, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Lccsanandroid/widget/Button;

    .line 237
    iget-object v5, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->dateSelector:Lccsancom/google/android/material/datepicker/DateSelector;

    invoke-interface {v5}, Lccsancom/google/android/material/datepicker/DateSelector;->isSelectionComplete()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 238
    iget-object v5, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Lccsanandroid/widget/Button;

    invoke-virtual {v5, v4}, Lccsanandroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    .line 240
    :cond_3
    iget-object v4, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Lccsanandroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lccsanandroid/widget/Button;->setEnabled(Z)V

    .line 242
    :goto_3
    iget-object v4, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Lccsanandroid/widget/Button;

    sget-object v5, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->CONFIRM_BUTTON_TAG:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lccsanandroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 243
    iget-object v4, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Lccsanandroid/widget/Button;

    new-instance v5, Lccsancom/google/android/material/datepicker/MaterialDatePicker$1;

    invoke-direct {v5, p0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker$1;-><init>(Lccsancom/google/android/material/datepicker/MaterialDatePicker;)V

    invoke-virtual {v4, v5}, Lccsanandroid/widget/Button;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 255
    sget v4, Lccsancom/google/android/material/R$id;->cancel_button:I

    invoke-virtual {v1, v4}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v4

    check-cast v4, Lccsanandroid/widget/Button;

    .line 256
    .local v4, "cancelButton":Lccsanandroid/widget/Button;
    sget-object v5, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->CANCEL_BUTTON_TAG:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lccsanandroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 257
    new-instance v5, Lccsancom/google/android/material/datepicker/MaterialDatePicker$2;

    invoke-direct {v5, p0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker$2;-><init>(Lccsancom/google/android/material/datepicker/MaterialDatePicker;)V

    invoke-virtual {v4, v5}, Lccsanandroid/widget/Button;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 267
    return-object v1
.end method

.method public final onDismiss(Lccsanandroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Lccsanandroid/content/DialogInterface;

    .line 307
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->onDismissListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/content/DialogInterface$OnDismissListener;

    .line 308
    .local v1, "listener":Lccsanandroid/content/DialogInterface$OnDismissListener;
    invoke-interface {v1, p1}, Lccsanandroid/content/DialogInterface$OnDismissListener;->onDismiss(Lccsanandroid/content/DialogInterface;)V

    .line 309
    .end local v1    # "listener":Lccsanandroid/content/DialogInterface$OnDismissListener;
    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->getView()Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    .line 311
    .local v0, "viewGroup":Lccsanandroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {v0}, Lccsanandroid/view/ViewGroup;->removeAllViews()V

    .line 314
    :cond_1
    invoke-super {p0, p1}, Lccsanandroidx/fragment/app/DialogFragment;->onDismiss(Lccsanandroid/content/DialogInterface;)V

    .line 315
    return-void
.end method

.method public final onSaveInstanceState(Lccsanandroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Lccsanandroid/os/Bundle;

    .line 148
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    invoke-super {p0, p1}, Lccsanandroidx/fragment/app/DialogFragment;->onSaveInstanceState(Lccsanandroid/os/Bundle;)V

    .line 149
    iget v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->overrideThemeResId:I

    const-string v1, "OVERRIDE_THEME_RES_ID"

    invoke-virtual {p1, v1, v0}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->dateSelector:Lccsancom/google/android/material/datepicker/DateSelector;

    const-string v1, "DATE_SELECTOR_KEY"

    invoke-virtual {p1, v1, v0}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 152
    new-instance v0, Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;

    iget-object v1, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->calendarConstraints:Lccsancom/google/android/material/datepicker/CalendarConstraints;

    invoke-direct {v0, v1}, Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;-><init>(Lccsancom/google/android/material/datepicker/CalendarConstraints;)V

    .line 154
    .local v0, "constraintsBuilder":Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;
    iget-object v1, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->calendar:Lccsancom/google/android/material/datepicker/MaterialCalendar;

    invoke-virtual {v1}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->getCurrentMonth()Lccsancom/google/android/material/datepicker/Month;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->calendar:Lccsancom/google/android/material/datepicker/MaterialCalendar;

    invoke-virtual {v1}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->getCurrentMonth()Lccsancom/google/android/material/datepicker/Month;

    move-result-object v1

    iget-wide v1, v1, Lccsancom/google/android/material/datepicker/Month;->timeInMillis:J

    invoke-virtual {v0, v1, v2}, Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;->setOpenAt(J)Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;

    .line 157
    :cond_0
    invoke-virtual {v0}, Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;->build()Lccsancom/google/android/material/datepicker/CalendarConstraints;

    move-result-object v1

    const-string v2, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v2, v1}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 158
    iget v1, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->titleTextResId:I

    const-string v2, "TITLE_TEXT_RES_ID_KEY"

    invoke-virtual {p1, v2, v1}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    iget-object v1, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->titleText:Ljava/lang/CharSequence;

    const-string v2, "TITLE_TEXT_KEY"

    invoke-virtual {p1, v2, v1}, Lccsanandroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 160
    return-void
.end method

.method public onStart()V
    .locals 10

    .line 272
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    invoke-super {p0}, Lccsanandroidx/fragment/app/DialogFragment;->onStart()V

    .line 273
    invoke-virtual {p0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->requireDialog()Lccsanandroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/app/Dialog;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    .line 275
    .local v0, "window":Lccsanandroid/view/Window;
    iget-boolean v1, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->fullscreen:Z

    if-eqz v1, :cond_0

    .line 276
    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Lccsanandroid/view/Window;->setLayout(II)V

    .line 277
    iget-object v1, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->background:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, v1}, Lccsanandroid/view/Window;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 279
    :cond_0
    const/4 v1, -0x2

    invoke-virtual {v0, v1, v1}, Lccsanandroid/view/Window;->setLayout(II)V

    .line 280
    nop

    .line 281
    invoke-virtual {p0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccsancom/google/android/material/R$dimen;->mtrl_calendar_dialog_background_inset:I

    invoke-virtual {v1, v2}, Lccsanandroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 282
    .local v1, "inset":I
    new-instance v2, Lccsanandroid/graphics/Rect;

    invoke-direct {v2, v1, v1, v1, v1}, Lccsanandroid/graphics/Rect;-><init>(IIII)V

    .line 283
    .local v2, "insets":Lccsanandroid/graphics/Rect;
    new-instance v9, Lccsanandroid/graphics/drawable/InsetDrawable;

    iget-object v4, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->background:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    move-object v3, v9

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-direct/range {v3 .. v8}, Lccsanandroid/graphics/drawable/InsetDrawable;-><init>(Lccsanandroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v0, v9}, Lccsanandroid/view/Window;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 284
    nop

    .line 285
    invoke-virtual {v0}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v3

    new-instance v4, Lccsancom/google/android/material/dialog/InsetDialogOnTouchListener;

    .line 286
    invoke-virtual {p0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->requireDialog()Lccsanandroid/app/Dialog;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lccsancom/google/android/material/dialog/InsetDialogOnTouchListener;-><init>(Lccsanandroid/app/Dialog;Lccsanandroid/graphics/Rect;)V

    invoke-virtual {v3, v4}, Lccsanandroid/view/View;->setOnTouchListener(Lccsanandroid/view/View$OnTouchListener;)V

    .line 288
    .end local v1    # "inset":I
    .end local v2    # "insets":Lccsanandroid/graphics/Rect;
    :goto_0
    invoke-direct {p0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->startPickerFragment()V

    .line 289
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 293
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->pickerFragment:Lccsancom/google/android/material/datepicker/PickerFragment;

    invoke-virtual {v0}, Lccsancom/google/android/material/datepicker/PickerFragment;->clearOnSelectionChangedListeners()V

    .line 294
    invoke-super {p0}, Lccsanandroidx/fragment/app/DialogFragment;->onStop()V

    .line 295
    return-void
.end method

.method public removeOnCancelListener(Lccsanandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 1
    .param p1, "onCancelListener"    # Lccsanandroid/content/DialogInterface$OnCancelListener;

    .line 507
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->onCancelListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeOnDismissListener(Lccsanandroid/content/DialogInterface$OnDismissListener;)Z
    .locals 1
    .param p1, "onDismissListener"    # Lccsanandroid/content/DialogInterface$OnDismissListener;

    .line 525
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->onDismissListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeOnNegativeButtonClickListener(Lccsanandroid/view/View$OnClickListener;)Z
    .locals 1
    .param p1, "onNegativeButtonClickListener"    # Lccsanandroid/view/View$OnClickListener;

    .line 485
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->onNegativeButtonClickListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeOnPositiveButtonClickListener(Lccsancom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener<",
            "-TS;>;)Z"
        }
    .end annotation

    .line 463
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker<TS;>;"
    .local p1, "onPositiveButtonClickListener":Lccsancom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener;, "Lccsancom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener<-TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->onPositiveButtonClickListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
