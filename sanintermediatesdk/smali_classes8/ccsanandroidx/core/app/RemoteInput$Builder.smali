.class public final Lccsanandroidx/core/app/RemoteInput$Builder;
.super Ljava/lang/Object;
.source "RemoteInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/app/RemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAllowFreeFormTextInput:Z

.field private final mAllowedDataTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChoices:[Ljava/lang/CharSequence;

.field private mEditChoicesBeforeSending:I

.field private final mExtras:Lccsanandroid/os/Bundle;

.field private mLabel:Ljava/lang/CharSequence;

.field private final mResultKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "resultKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultKey"
        }
    .end annotation

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lccsanandroidx/core/app/RemoteInput$Builder;->mAllowedDataTypes:Ljava/util/Set;

    .line 180
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lccsanandroidx/core/app/RemoteInput$Builder;->mExtras:Lccsanandroid/os/Bundle;

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/core/app/RemoteInput$Builder;->mAllowFreeFormTextInput:Z

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/core/app/RemoteInput$Builder;->mEditChoicesBeforeSending:I

    .line 193
    if-eqz p1, :cond_0

    .line 196
    iput-object p1, p0, Lccsanandroidx/core/app/RemoteInput$Builder;->mResultKey:Ljava/lang/String;

    .line 197
    return-void

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Result key can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addExtras(Lccsanandroid/os/Bundle;)Lccsanandroidx/core/app/RemoteInput$Builder;
    .locals 1
    .param p1, "extras"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extras"
        }
    .end annotation

    .line 287
    if-eqz p1, :cond_0

    .line 288
    iget-object v0, p0, Lccsanandroidx/core/app/RemoteInput$Builder;->mExtras:Lccsanandroid/os/Bundle;

    invoke-virtual {v0, p1}, Lccsanandroid/os/Bundle;->putAll(Lccsanandroid/os/Bundle;)V

    .line 290
    :cond_0
    return-object p0
.end method

.method public build()Lccsanandroidx/core/app/RemoteInput;
    .locals 9

    .line 309
    new-instance v8, Lccsanandroidx/core/app/RemoteInput;

    iget-object v1, p0, Lccsanandroidx/core/app/RemoteInput$Builder;->mResultKey:Ljava/lang/String;

    iget-object v2, p0, Lccsanandroidx/core/app/RemoteInput$Builder;->mLabel:Ljava/lang/CharSequence;

    iget-object v3, p0, Lccsanandroidx/core/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    iget-boolean v4, p0, Lccsanandroidx/core/app/RemoteInput$Builder;->mAllowFreeFormTextInput:Z

    iget v5, p0, Lccsanandroidx/core/app/RemoteInput$Builder;->mEditChoicesBeforeSending:I

    iget-object v6, p0, Lccsanandroidx/core/app/RemoteInput$Builder;->mExtras:Lccsanandroid/os/Bundle;

    iget-object v7, p0, Lccsanandroidx/core/app/RemoteInput$Builder;->mAllowedDataTypes:Ljava/util/Set;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lccsanandroidx/core/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILccsanandroid/os/Bundle;Ljava/util/Set;)V

    return-object v8
.end method

.method public getExtras()Lccsanandroid/os/Bundle;
    .locals 1

    .line 300
    iget-object v0, p0, Lccsanandroidx/core/app/RemoteInput$Builder;->mExtras:Lccsanandroid/os/Bundle;

    return-object v0
.end method

.method public setAllowDataType(Ljava/lang/String;Z)Lccsanandroidx/core/app/RemoteInput$Builder;
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "doAllow"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mimeType",
            "doAllow"
        }
    .end annotation

    .line 241
    if-eqz p2, :cond_0

    .line 242
    iget-object v0, p0, Lccsanandroidx/core/app/RemoteInput$Builder;->mAllowedDataTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Lccsanandroidx/core/app/RemoteInput$Builder;->mAllowedDataTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 246
    :goto_0
    return-object p0
.end method

.method public setAllowFreeFormInput(Z)Lccsanandroidx/core/app/RemoteInput$Builder;
    .locals 0
    .param p1, "allowFreeFormTextInput"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowFreeFormTextInput"
        }
    .end annotation

    .line 261
    iput-boolean p1, p0, Lccsanandroidx/core/app/RemoteInput$Builder;->mAllowFreeFormTextInput:Z

    .line 262
    return-object p0
.end method

.method public setChoices([Ljava/lang/CharSequence;)Lccsanandroidx/core/app/RemoteInput$Builder;
    .locals 0
    .param p1, "choices"    # [Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "choices"
        }
    .end annotation

    .line 225
    iput-object p1, p0, Lccsanandroidx/core/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    .line 226
    return-object p0
.end method

.method public setEditChoicesBeforeSending(I)Lccsanandroidx/core/app/RemoteInput$Builder;
    .locals 0
    .param p1, "editChoicesBeforeSending"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editChoicesBeforeSending"
        }
    .end annotation

    .line 274
    iput p1, p0, Lccsanandroidx/core/app/RemoteInput$Builder;->mEditChoicesBeforeSending:I

    .line 275
    return-object p0
.end method

.method public setLabel(Ljava/lang/CharSequence;)Lccsanandroidx/core/app/RemoteInput$Builder;
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "label"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lccsanandroidx/core/app/RemoteInput$Builder;->mLabel:Ljava/lang/CharSequence;

    .line 208
    return-object p0
.end method