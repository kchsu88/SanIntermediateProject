.class public Lccsancom/google/android/material/theme/MaterialComponentsViewInflater;
.super Lccsanandroidx/appcompat/app/AppCompatViewInflater;
.source "MaterialComponentsViewInflater.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lccsanandroidx/appcompat/app/AppCompatViewInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAutoCompleteTextView(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/AppCompatAutoCompleteTextView;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 68
    new-instance v0, Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-direct {v0, p1, p2}, Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createButton(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/AppCompatButton;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 43
    new-instance v0, Lccsancom/google/android/material/button/MaterialButton;

    invoke-direct {v0, p1, p2}, Lccsancom/google/android/material/button/MaterialButton;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createCheckBox(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/AppCompatCheckBox;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 49
    new-instance v0, Lccsancom/google/android/material/checkbox/MaterialCheckBox;

    invoke-direct {v0, p1, p2}, Lccsancom/google/android/material/checkbox/MaterialCheckBox;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createRadioButton(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/AppCompatRadioButton;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 55
    new-instance v0, Lccsancom/google/android/material/radiobutton/MaterialRadioButton;

    invoke-direct {v0, p1, p2}, Lccsancom/google/android/material/radiobutton/MaterialRadioButton;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createTextView(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/AppCompatTextView;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 61
    new-instance v0, Lccsancom/google/android/material/textview/MaterialTextView;

    invoke-direct {v0, p1, p2}, Lccsancom/google/android/material/textview/MaterialTextView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    return-object v0
.end method
