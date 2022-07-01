.class public Lccsancom/google/android/material/datepicker/MaterialStyledDatePickerDialog;
.super Lccsanandroid/app/DatePickerDialog;
.source "MaterialStyledDatePickerDialog.java"


# static fields
.field private static final DEF_STYLE_ATTR:I = 0x101035c

.field private static final DEF_STYLE_RES:I


# instance fields
.field private final background:Lccsanandroid/graphics/drawable/Drawable;

.field private final backgroundInsets:Lccsanandroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    sget v0, Lccsancom/google/android/material/R$style;->MaterialAlertDialog_MaterialComponents_Picker_Date_Spinner:I

    sput v0, Lccsancom/google/android/material/datepicker/MaterialStyledDatePickerDialog;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/datepicker/MaterialStyledDatePickerDialog;-><init>(Lccsanandroid/content/Context;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;I)V
    .locals 7
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "themeResId"    # I

    .line 63
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lccsancom/google/android/material/datepicker/MaterialStyledDatePickerDialog;-><init>(Lccsanandroid/content/Context;ILccsanandroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;ILccsanandroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 6
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "themeResId"    # I
    .param p3, "listener"    # Lccsanandroid/app/DatePickerDialog$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I

    .line 83
    invoke-direct/range {p0 .. p6}, Lccsanandroid/app/DatePickerDialog;-><init>(Lccsanandroid/content/Context;ILccsanandroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 84
    invoke-virtual {p0}, Lccsancom/google/android/material/datepicker/MaterialStyledDatePickerDialog;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    .line 86
    nop

    .line 88
    invoke-virtual {p0}, Lccsancom/google/android/material/datepicker/MaterialStyledDatePickerDialog;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    sget v1, Lccsancom/google/android/material/R$attr;->colorSurface:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {v0, v1, v2}, Lccsancom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Lccsanandroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 90
    .local v0, "surfaceColor":I
    new-instance v1, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    sget v2, Lccsancom/google/android/material/datepicker/MaterialStyledDatePickerDialog;->DEF_STYLE_RES:I

    const/4 v3, 0x0

    const v4, 0x101035c

    invoke-direct {v1, p1, v3, v4, v2}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)V

    .line 93
    .local v1, "materialShapeDrawable":Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    sget v3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v3, v5, :cond_0

    .line 94
    invoke-static {v0}, Lccsanandroid/content/res/ColorStateList;->valueOf(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Lccsanandroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 96
    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Lccsanandroid/content/res/ColorStateList;->valueOf(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 99
    :goto_0
    nop

    .line 100
    invoke-static {p1, v4, v2}, Lccsancom/google/android/material/dialog/MaterialDialogs;->getDialogBackgroundInsets(Lccsanandroid/content/Context;II)Lccsanandroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lccsancom/google/android/material/datepicker/MaterialStyledDatePickerDialog;->backgroundInsets:Lccsanandroid/graphics/Rect;

    .line 101
    invoke-static {v1, v2}, Lccsancom/google/android/material/dialog/MaterialDialogs;->insetDrawable(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/Rect;)Lccsanandroid/graphics/drawable/InsetDrawable;

    move-result-object v2

    iput-object v2, p0, Lccsancom/google/android/material/datepicker/MaterialStyledDatePickerDialog;->background:Lccsanandroid/graphics/drawable/Drawable;

    .line 102
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 7
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "listener"    # Lccsanandroid/app/DatePickerDialog$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "month"    # I
    .param p5, "dayOfMonth"    # I

    .line 72
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lccsancom/google/android/material/datepicker/MaterialStyledDatePickerDialog;-><init>(Lccsanandroid/content/Context;ILccsanandroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 73
    return-void
.end method


# virtual methods
.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 106
    invoke-super {p0, p1}, Lccsanandroid/app/DatePickerDialog;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lccsancom/google/android/material/datepicker/MaterialStyledDatePickerDialog;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/material/datepicker/MaterialStyledDatePickerDialog;->background:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lccsanandroid/view/Window;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-virtual {p0}, Lccsancom/google/android/material/datepicker/MaterialStyledDatePickerDialog;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v0

    new-instance v1, Lccsancom/google/android/material/dialog/InsetDialogOnTouchListener;

    iget-object v2, p0, Lccsancom/google/android/material/datepicker/MaterialStyledDatePickerDialog;->backgroundInsets:Lccsanandroid/graphics/Rect;

    invoke-direct {v1, p0, v2}, Lccsancom/google/android/material/dialog/InsetDialogOnTouchListener;-><init>(Lccsanandroid/app/Dialog;Lccsanandroid/graphics/Rect;)V

    .line 110
    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setOnTouchListener(Lccsanandroid/view/View$OnTouchListener;)V

    .line 111
    return-void
.end method
