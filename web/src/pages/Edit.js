import { React } from "react";
import PageLayout from "../layouts/PageLayout";

function EditNoteForm() {
    return (
        <form>
            <label>
                Title:
                <input type="text" name="title" />
            </label>
            <label>
                Note:
                <textarea name="note" />
            </label>
            <button type="submit">Save</button>
            <button type="button">Delete</button>
        </form>
    );
}
function EditPage() {
    return (
    <>
        <PageLayout>
            <h1>Edit Note</h1>
            <EditNoteForm />
        </PageLayout>
    </>
    );
}
export default EditPage;