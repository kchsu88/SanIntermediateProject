.class public final Lccsancom/google/android/material/timepicker/MaterialTimePicker;
.super Lccsanandroidx/fragment/app/DialogFragment;
.source "MaterialTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;
    }
.end annotation


# static fields
.field public static final INPUT_MODE_CLOCK:I = 0x0

.field static final INPUT_MODE_EXTRA:Ljava/lang/String; = "TIME_PICKER_INPUT_MODE"

.field public static final INPUT_MODE_KEYBOARD:I = 0x1

.field static final TIME_MODEL_EXTRA:Ljava/lang/String; = "TIME_PICKER_TIME_MODEL"

.field static final TITLE_RES_EXTRA:Ljava/lang/String; = "TIME_PICKER_TITLE_RES"

.field static final TITLE_TEXT_EXTRA:Ljava/lang/String; = "TIME_PICKER_TITLE_TEXT"


# instance fields
.field private activePresenter:Lccsancom/google/android/material/timepicker/TimePickerPresenter;

.field private final cancelListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lccsanandroid/content/DialogInterface$OnCancelListener;",
            ">;"
        }
    .end annotation
.end field

.field private clockIcon:I

.field private final dismissListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lccsanandroid/content/DialogInterface$OnDismissListener;",
            ">;"
        }
    .end annotation
.end field

.field private inputMode:I

.field private keyboardIcon:I

.field private modeButton:Lccsancom/google/android/material/button/MaterialButton;

.field private final negativeButtonListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lccsanandroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private final positiveButtonListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lccsanandroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private textInputStub:Lccsanandroid/view/ViewStub;

.field private textInputView:Lccsanandroid/widget/LinearLayout;

.field private time:Lccsancom/google/android/material/timepicker/TimeModel;

.field private timePickerClockPresenter:Lccsancom/google/android/material/timepicker/TimePickerClockPresenter;

.field private timePickerTextInputPresenter:Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;

.field private timePickerView:Lccsancom/google/android/material/timepicker/TimePickerView;

.field private titleResId:I

.field private titleText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lccsanandroidx/fragment/app/DialogFragment;-><init>()V

    .line 60
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonListeners:Ljava/util/Set;

    .line 61
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonListeners:Ljava/util/Set;

    .line 62
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->cancelListeners:Ljava/util/Set;

    .line 63
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->dismissListeners:Ljava/util/Set;

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->titleResId:I

    .line 94
    iput v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    return-void
.end method

.method static synthetic access$1000(Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;)Lccsancom/google/android/material/timepicker/MaterialTimePicker;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;

    .line 58
    invoke-static {p0}, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->newInstance(Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;)Lccsancom/google/android/material/timepicker/MaterialTimePicker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lccsancom/google/android/material/timepicker/MaterialTimePicker;)I
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/timepicker/MaterialTimePicker;

    .line 58
    iget v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    return v0
.end method

.method static synthetic access$402(Lccsancom/google/android/material/timepicker/MaterialTimePicker;I)I
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/timepicker/MaterialTimePicker;
    .param p1, "x1"    # I

    .line 58
    iput p1, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    return p1
.end method

.method static synthetic access$500(Lccsancom/google/android/material/timepicker/MaterialTimePicker;)Lccsancom/google/android/material/button/MaterialButton;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/timepicker/MaterialTimePicker;

    .line 58
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->modeButton:Lccsancom/google/android/material/button/MaterialButton;

    return-object v0
.end method

.method static synthetic access$600(Lccsancom/google/android/material/timepicker/MaterialTimePicker;Lccsancom/google/android/material/button/MaterialButton;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/timepicker/MaterialTimePicker;
    .param p1, "x1"    # Lccsancom/google/android/material/button/MaterialButton;

    .line 58
    invoke-direct {p0, p1}, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->updateInputMode(Lccsancom/google/android/material/button/MaterialButton;)V

    return-void
.end method

.method static synthetic access$700(Lccsancom/google/android/material/timepicker/MaterialTimePicker;)Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/timepicker/MaterialTimePicker;

    .line 58
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->timePickerTextInputPresenter:Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;

    return-object v0
.end method

.method static synthetic access$800(Lccsancom/google/android/material/timepicker/MaterialTimePicker;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/timepicker/MaterialTimePicker;

    .line 58
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$900(Lccsancom/google/android/material/timepicker/MaterialTimePicker;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/timepicker/MaterialTimePicker;

    .line 58
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonListeners:Ljava/util/Set;

    return-object v0
.end method

.method private dataForMode(I)Lccsanandroid/util/Pair;
    .locals 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 320
    packed-switch p1, :pswitch_data_0

    .line 327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no icon for mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :pswitch_0
    new-instance v0, Lccsanandroid/util/Pair;

    iget v1, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->clockIcon:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lccsancom/google/android/material/R$string;->material_timepicker_clock_mode_description:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 324
    :pswitch_1
    new-instance v0, Lccsanandroid/util/Pair;

    iget v1, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->keyboardIcon:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lccsancom/google/android/material/R$string;->material_timepicker_text_input_mode_description:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initializeOrRetrieveActivePresenterForMode(I)Lccsancom/google/android/material/timepicker/TimePickerPresenter;
    .locals 3
    .param p1, "mode"    # I

    .line 300
    if-nez p1, :cond_1

    .line 301
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->timePickerClockPresenter:Lccsancom/google/android/material/timepicker/TimePickerClockPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lccsancom/google/android/material/timepicker/TimePickerClockPresenter;

    iget-object v1, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->timePickerView:Lccsancom/google/android/material/timepicker/TimePickerView;

    iget-object v2, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->time:Lccsancom/google/android/material/timepicker/TimeModel;

    invoke-direct {v0, v1, v2}, Lccsancom/google/android/material/timepicker/TimePickerClockPresenter;-><init>(Lccsancom/google/android/material/timepicker/TimePickerView;Lccsancom/google/android/material/timepicker/TimeModel;)V

    :cond_0
    iput-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->timePickerClockPresenter:Lccsancom/google/android/material/timepicker/TimePickerClockPresenter;

    .line 306
    return-object v0

    .line 309
    :cond_1
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->timePickerTextInputPresenter:Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;

    if-nez v0, :cond_2

    .line 310
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->textInputStub:Lccsanandroid/view/ViewStub;

    invoke-virtual {v0}, Lccsanandroid/view/ViewStub;->inflate()Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/LinearLayout;

    iput-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->textInputView:Lccsanandroid/widget/LinearLayout;

    .line 311
    new-instance v1, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;

    iget-object v2, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->time:Lccsancom/google/android/material/timepicker/TimeModel;

    invoke-direct {v1, v0, v2}, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;-><init>(Lccsanandroid/widget/LinearLayout;Lccsancom/google/android/material/timepicker/TimeModel;)V

    iput-object v1, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->timePickerTextInputPresenter:Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;

    .line 314
    :cond_2
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->timePickerTextInputPresenter:Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;

    invoke-virtual {v0}, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->clearCheck()V

    .line 316
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->timePickerTextInputPresenter:Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;

    return-object v0
.end method

.method private static newInstance(Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;)Lccsancom/google/android/material/timepicker/MaterialTimePicker;
    .locals 4
    .param p0, "options"    # Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;

    .line 100
    new-instance v0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;

    invoke-direct {v0}, Lccsancom/google/android/material/timepicker/MaterialTimePicker;-><init>()V

    .line 101
    .local v0, "fragment":Lccsancom/google/android/material/timepicker/MaterialTimePicker;
    new-instance v1, Lccsanandroid/os/Bundle;

    invoke-direct {v1}, Lccsanandroid/os/Bundle;-><init>()V

    .line 102
    .local v1, "args":Lccsanandroid/os/Bundle;
    invoke-static {p0}, Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$000(Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;)Lccsancom/google/android/material/timepicker/TimeModel;

    move-result-object v2

    const-string v3, "TIME_PICKER_TIME_MODEL"

    invoke-virtual {v1, v3, v2}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 103
    invoke-static {p0}, Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$100(Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;)I

    move-result v2

    const-string v3, "TIME_PICKER_INPUT_MODE"

    invoke-virtual {v1, v3, v2}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    invoke-static {p0}, Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$200(Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;)I

    move-result v2

    const-string v3, "TIME_PICKER_TITLE_RES"

    invoke-virtual {v1, v3, v2}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    invoke-static {p0}, Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$300(Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 106
    invoke-static {p0}, Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;->access$300(Lccsancom/google/android/material/timepicker/MaterialTimePicker$Builder;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TIME_PICKER_TITLE_TEXT"

    invoke-virtual {v1, v3, v2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    invoke-virtual {v0, v1}, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->setArguments(Lccsanandroid/os/Bundle;)V

    .line 110
    return-object v0
.end method

.method private restoreState(Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Lccsanandroid/os/Bundle;

    .line 185
    if-nez p1, :cond_0

    .line 186
    return-void

    .line 189
    :cond_0
    const-string v0, "TIME_PICKER_TIME_MODEL"

    invoke-virtual {p1, v0}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/timepicker/TimeModel;

    iput-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->time:Lccsancom/google/android/material/timepicker/TimeModel;

    .line 190
    if-nez v0, :cond_1

    .line 191
    new-instance v0, Lccsancom/google/android/material/timepicker/TimeModel;

    invoke-direct {v0}, Lccsancom/google/android/material/timepicker/TimeModel;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->time:Lccsancom/google/android/material/timepicker/TimeModel;

    .line 193
    :cond_1
    const-string v0, "TIME_PICKER_INPUT_MODE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    .line 194
    const-string v0, "TIME_PICKER_TITLE_RES"

    invoke-virtual {p1, v0, v1}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->titleResId:I

    .line 195
    const-string v0, "TIME_PICKER_TITLE_TEXT"

    invoke-virtual {p1, v0}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->titleText:Ljava/lang/String;

    .line 196
    return-void
.end method

.method private updateInputMode(Lccsancom/google/android/material/button/MaterialButton;)V
    .locals 3
    .param p1, "modeButton"    # Lccsancom/google/android/material/button/MaterialButton;

    .line 286
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lccsancom/google/android/material/timepicker/TimePickerPresenter;

    if-eqz v0, :cond_0

    .line 287
    invoke-interface {v0}, Lccsancom/google/android/material/timepicker/TimePickerPresenter;->hide()V

    .line 290
    :cond_0
    iget v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    invoke-direct {p0, v0}, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->initializeOrRetrieveActivePresenterForMode(I)Lccsancom/google/android/material/timepicker/TimePickerPresenter;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lccsancom/google/android/material/timepicker/TimePickerPresenter;

    .line 291
    invoke-interface {v0}, Lccsancom/google/android/material/timepicker/TimePickerPresenter;->show()V

    .line 292
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->activePresenter:Lccsancom/google/android/material/timepicker/TimePickerPresenter;

    invoke-interface {v0}, Lccsancom/google/android/material/timepicker/TimePickerPresenter;->invalidate()V

    .line 293
    iget v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    invoke-direct {p0, v0}, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->dataForMode(I)Lccsanandroid/util/Pair;

    move-result-object v0

    .line 294
    .local v0, "buttonData":Lccsanandroid/util/Pair;, "Lccsanandroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v1, v0, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lccsancom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 295
    invoke-virtual {p0}, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    iget-object v2, v0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lccsanandroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lccsancom/google/android/material/button/MaterialButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 296
    return-void
.end method


# virtual methods
.method public addOnCancelListener(Lccsanandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 1
    .param p1, "listener"    # Lccsanandroid/content/DialogInterface$OnCancelListener;

    .line 386
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->cancelListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addOnDismissListener(Lccsanandroid/content/DialogInterface$OnDismissListener;)Z
    .locals 1
    .param p1, "listener"    # Lccsanandroid/content/DialogInterface$OnDismissListener;

    .line 410
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->dismissListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addOnNegativeButtonClickListener(Lccsanandroid/view/View$OnClickListener;)Z
    .locals 1
    .param p1, "listener"    # Lccsanandroid/view/View$OnClickListener;

    .line 358
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addOnPositiveButtonClickListener(Lccsanandroid/view/View$OnClickListener;)Z
    .locals 1
    .param p1, "listener"    # Lccsanandroid/view/View$OnClickListener;

    .line 337
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clearOnCancelListeners()V
    .locals 1

    .line 402
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->cancelListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 403
    return-void
.end method

.method public clearOnDismissListeners()V
    .locals 1

    .line 426
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->dismissListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 427
    return-void
.end method

.method public clearOnNegativeButtonClickListeners()V
    .locals 1

    .line 374
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 375
    return-void
.end method

.method public clearOnPositiveButtonClickListeners()V
    .locals 1

    .line 353
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 354
    return-void
.end method

.method public getHour()I
    .locals 1

    .line 121
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->time:Lccsancom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lccsancom/google/android/material/timepicker/TimeModel;->hour:I

    rem-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public getInputMode()I
    .locals 1

    .line 126
    iget v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .line 115
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->time:Lccsancom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lccsancom/google/android/material/timepicker/TimeModel;->minute:I

    return v0
.end method

.method getTimePickerClockPresenter()Lccsancom/google/android/material/timepicker/TimePickerClockPresenter;
    .locals 1

    .line 332
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->timePickerClockPresenter:Lccsancom/google/android/material/timepicker/TimePickerClockPresenter;

    return-object v0
.end method

.method public final onCancel(Lccsanandroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Lccsanandroid/content/DialogInterface;

    .line 267
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->cancelListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/content/DialogInterface$OnCancelListener;

    .line 268
    .local v1, "listener":Lccsanandroid/content/DialogInterface$OnCancelListener;
    invoke-interface {v1, p1}, Lccsanandroid/content/DialogInterface$OnCancelListener;->onCancel(Lccsanandroid/content/DialogInterface;)V

    .line 269
    .end local v1    # "listener":Lccsanandroid/content/DialogInterface$OnCancelListener;
    goto :goto_0

    .line 270
    :cond_0
    invoke-super {p0, p1}, Lccsanandroidx/fragment/app/DialogFragment;->onCancel(Lccsanandroid/content/DialogInterface;)V

    .line 271
    return-void
.end method

.method public onCreate(Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Lccsanandroid/os/Bundle;

    .line 171
    invoke-super {p0, p1}, Lccsanandroidx/fragment/app/DialogFragment;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 172
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->getArguments()Lccsanandroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-direct {p0, v0}, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->restoreState(Lccsanandroid/os/Bundle;)V

    .line 173
    return-void
.end method

.method public final onCreateDialog(Lccsanandroid/os/Bundle;)Lccsanandroid/app/Dialog;
    .locals 10
    .param p1, "bundle"    # Lccsanandroid/os/Bundle;

    .line 132
    invoke-virtual {p0}, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->requireContext()Lccsanandroid/content/Context;

    move-result-object v0

    sget v1, Lccsancom/google/android/material/R$attr;->materialTimePickerTheme:I

    invoke-static {v0, v1}, Lccsancom/google/android/material/resources/MaterialAttributes;->resolve(Lccsanandroid/content/Context;I)Lccsanandroid/util/TypedValue;

    move-result-object v0

    .line 133
    .local v0, "value":Lccsanandroid/util/TypedValue;
    new-instance v1, Lccsanandroid/app/Dialog;

    invoke-virtual {p0}, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->requireContext()Lccsanandroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    iget v4, v0, Lccsanandroid/util/TypedValue;->data:I

    :goto_0
    invoke-direct {v1, v2, v4}, Lccsanandroid/app/Dialog;-><init>(Lccsanandroid/content/Context;I)V

    .line 134
    .local v1, "dialog":Lccsanandroid/app/Dialog;
    invoke-virtual {v1}, Lccsanandroid/app/Dialog;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    .line 135
    .local v2, "context":Lccsanandroid/content/Context;
    sget v4, Lccsancom/google/android/material/R$attr;->colorSurface:I

    const-class v5, Lccsancom/google/android/material/timepicker/MaterialTimePicker;

    .line 137
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    .line 136
    invoke-static {v2, v4, v5}, Lccsancom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Lccsanandroid/content/Context;ILjava/lang/String;)I

    move-result v4

    .line 139
    .local v4, "surfaceColor":I
    new-instance v5, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    sget v6, Lccsancom/google/android/material/R$attr;->materialTimePickerStyle:I

    sget v7, Lccsancom/google/android/material/R$style;->Widget_MaterialComponents_TimePicker:I

    const/4 v8, 0x0

    invoke-direct {v5, v2, v8, v6, v7}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)V

    .line 146
    .local v5, "background":Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    sget-object v6, Lccsancom/google/android/material/R$styleable;->MaterialTimePicker:[I

    sget v7, Lccsancom/google/android/material/R$attr;->materialTimePickerStyle:I

    sget v9, Lccsancom/google/android/material/R$style;->Widget_MaterialComponents_TimePicker:I

    .line 147
    invoke-virtual {v2, v8, v6, v7, v9}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[III)Lccsanandroid/content/res/TypedArray;

    move-result-object v6

    .line 153
    .local v6, "a":Lccsanandroid/content/res/TypedArray;
    sget v7, Lccsancom/google/android/material/R$styleable;->MaterialTimePicker_clockIcon:I

    invoke-virtual {v6, v7, v3}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->clockIcon:I

    .line 154
    sget v7, Lccsancom/google/android/material/R$styleable;->MaterialTimePicker_keyboardIcon:I

    invoke-virtual {v6, v7, v3}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->keyboardIcon:I

    .line 156
    invoke-virtual {v6}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 158
    invoke-virtual {v5, v2}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Lccsanandroid/content/Context;)V

    .line 159
    invoke-static {v4}, Lccsanandroid/content/res/ColorStateList;->valueOf(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v5, v3}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 160
    invoke-virtual {v1}, Lccsanandroid/app/Dialog;->getWindow()Lccsanandroid/view/Window;

    move-result-object v3

    .line 161
    .local v3, "window":Lccsanandroid/view/Window;
    invoke-virtual {v3, v5}, Lccsanandroid/view/Window;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 162
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lccsanandroid/view/Window;->requestFeature(I)Z

    .line 164
    const/4 v7, -0x2

    invoke-virtual {v3, v7, v7}, Lccsanandroid/view/Window;->setLayout(II)V

    .line 166
    return-object v1
.end method

.method public final onCreateView(Lccsanandroid/view/LayoutInflater;Lccsanandroid/view/ViewGroup;Lccsanandroid/os/Bundle;)Lccsanandroid/view/View;
    .locals 6
    .param p1, "layoutInflater"    # Lccsanandroid/view/LayoutInflater;
    .param p2, "viewGroup"    # Lccsanandroid/view/ViewGroup;
    .param p3, "bundle"    # Lccsanandroid/os/Bundle;

    .line 204
    sget v0, Lccsancom/google/android/material/R$layout;->material_timepicker_dialog:I

    .line 205
    invoke-virtual {p1, v0, p2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    .line 206
    .local v0, "root":Lccsanandroid/view/ViewGroup;
    sget v1, Lccsancom/google/android/material/R$id;->material_timepicker_view:I

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewGroup;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/timepicker/TimePickerView;

    iput-object v1, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->timePickerView:Lccsancom/google/android/material/timepicker/TimePickerView;

    .line 207
    new-instance v2, Lccsancom/google/android/material/timepicker/MaterialTimePicker$1;

    invoke-direct {v2, p0}, Lccsancom/google/android/material/timepicker/MaterialTimePicker$1;-><init>(Lccsancom/google/android/material/timepicker/MaterialTimePicker;)V

    invoke-virtual {v1, v2}, Lccsancom/google/android/material/timepicker/TimePickerView;->setOnDoubleTapListener(Lccsancom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;)V

    .line 216
    sget v1, Lccsancom/google/android/material/R$id;->material_textinput_timepicker:I

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewGroup;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/ViewStub;

    iput-object v1, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->textInputStub:Lccsanandroid/view/ViewStub;

    .line 217
    sget v1, Lccsancom/google/android/material/R$id;->material_timepicker_mode_button:I

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewGroup;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/button/MaterialButton;

    iput-object v1, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->modeButton:Lccsancom/google/android/material/button/MaterialButton;

    .line 218
    sget v1, Lccsancom/google/android/material/R$id;->header_title:I

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewGroup;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    .line 220
    .local v1, "headerTitle":Lccsanandroid/widget/TextView;
    iget-object v2, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->titleText:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 221
    iget-object v2, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->titleText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :cond_0
    iget v2, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->titleResId:I

    if-eqz v2, :cond_1

    .line 225
    invoke-virtual {v1, v2}, Lccsanandroid/widget/TextView;->setText(I)V

    .line 228
    :cond_1
    iget-object v2, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->modeButton:Lccsancom/google/android/material/button/MaterialButton;

    invoke-direct {p0, v2}, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->updateInputMode(Lccsancom/google/android/material/button/MaterialButton;)V

    .line 229
    sget v2, Lccsancom/google/android/material/R$id;->material_timepicker_ok_button:I

    invoke-virtual {v0, v2}, Lccsanandroid/view/ViewGroup;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsanandroid/widget/Button;

    .line 230
    .local v2, "okButton":Lccsanandroid/widget/Button;
    new-instance v3, Lccsancom/google/android/material/timepicker/MaterialTimePicker$2;

    invoke-direct {v3, p0}, Lccsancom/google/android/material/timepicker/MaterialTimePicker$2;-><init>(Lccsancom/google/android/material/timepicker/MaterialTimePicker;)V

    invoke-virtual {v2, v3}, Lccsanandroid/widget/Button;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 241
    sget v3, Lccsancom/google/android/material/R$id;->material_timepicker_cancel_button:I

    invoke-virtual {v0, v3}, Lccsanandroid/view/ViewGroup;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v3

    check-cast v3, Lccsanandroid/widget/Button;

    .line 242
    .local v3, "cancelButton":Lccsanandroid/widget/Button;
    new-instance v4, Lccsancom/google/android/material/timepicker/MaterialTimePicker$3;

    invoke-direct {v4, p0}, Lccsancom/google/android/material/timepicker/MaterialTimePicker$3;-><init>(Lccsancom/google/android/material/timepicker/MaterialTimePicker;)V

    invoke-virtual {v3, v4}, Lccsanandroid/widget/Button;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 253
    iget-object v4, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->modeButton:Lccsancom/google/android/material/button/MaterialButton;

    new-instance v5, Lccsancom/google/android/material/timepicker/MaterialTimePicker$4;

    invoke-direct {v5, p0}, Lccsancom/google/android/material/timepicker/MaterialTimePicker$4;-><init>(Lccsancom/google/android/material/timepicker/MaterialTimePicker;)V

    invoke-virtual {v4, v5}, Lccsancom/google/android/material/button/MaterialButton;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 262
    return-object v0
.end method

.method public final onDismiss(Lccsanandroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Lccsanandroid/content/DialogInterface;

    .line 275
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->dismissListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/content/DialogInterface$OnDismissListener;

    .line 276
    .local v1, "listener":Lccsanandroid/content/DialogInterface$OnDismissListener;
    invoke-interface {v1, p1}, Lccsanandroid/content/DialogInterface$OnDismissListener;->onDismiss(Lccsanandroid/content/DialogInterface;)V

    .line 277
    .end local v1    # "listener":Lccsanandroid/content/DialogInterface$OnDismissListener;
    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->getView()Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    .line 279
    .local v0, "viewGroup":Lccsanandroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 280
    invoke-virtual {v0}, Lccsanandroid/view/ViewGroup;->removeAllViews()V

    .line 282
    :cond_1
    invoke-super {p0, p1}, Lccsanandroidx/fragment/app/DialogFragment;->onDismiss(Lccsanandroid/content/DialogInterface;)V

    .line 283
    return-void
.end method

.method public onSaveInstanceState(Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Lccsanandroid/os/Bundle;

    .line 177
    invoke-super {p0, p1}, Lccsanandroidx/fragment/app/DialogFragment;->onSaveInstanceState(Lccsanandroid/os/Bundle;)V

    .line 178
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->time:Lccsancom/google/android/material/timepicker/TimeModel;

    const-string v1, "TIME_PICKER_TIME_MODEL"

    invoke-virtual {p1, v1, v0}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 179
    iget v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->inputMode:I

    const-string v1, "TIME_PICKER_INPUT_MODE"

    invoke-virtual {p1, v1, v0}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    iget v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->titleResId:I

    const-string v1, "TIME_PICKER_TITLE_RES"

    invoke-virtual {p1, v1, v0}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 181
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->titleText:Ljava/lang/String;

    const-string v1, "TIME_PICKER_TITLE_TEXT"

    invoke-virtual {p1, v1, v0}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public removeOnCancelListener(Lccsanandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 1
    .param p1, "listener"    # Lccsanandroid/content/DialogInterface$OnCancelListener;

    .line 394
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->cancelListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeOnDismissListener(Lccsanandroid/content/DialogInterface$OnDismissListener;)Z
    .locals 1
    .param p1, "listener"    # Lccsanandroid/content/DialogInterface$OnDismissListener;

    .line 418
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->dismissListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeOnNegativeButtonClickListener(Lccsanandroid/view/View$OnClickListener;)Z
    .locals 1
    .param p1, "listener"    # Lccsanandroid/view/View$OnClickListener;

    .line 366
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->negativeButtonListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeOnPositiveButtonClickListener(Lccsanandroid/view/View$OnClickListener;)Z
    .locals 1
    .param p1, "listener"    # Lccsanandroid/view/View$OnClickListener;

    .line 345
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->positiveButtonListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
