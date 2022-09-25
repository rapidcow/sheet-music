"""make sad boi music"""
import os
import shutil
import subprocess as sp
import tempfile as tf

import PIL.Image as Image
import fitz


def copyfile(from_dir, to_dir, filename):
    from_file = os.path.join(from_dir, filename)
    to_file = os.path.join(to_dir, filename)
    shutil.copy(from_file, to_file)


if __name__ == '__main__':
    os.chdir(os.path.dirname(__file__))
    ly_name = 'boi11.ly'
    pdf_name = 'boi11.pdf'
    jpeg_name = 'boi11.jpg'
    targets = [pdf_name, jpeg_name]
    with tf.TemporaryDirectory() as tmpdir:
        copyfile('.', tmpdir, ly_name)
        sp.check_call(['lilypond', ly_name], cwd=tmpdir)
        doc = fitz.open(os.path.join(tmpdir, pdf_name))
        assert doc.page_count == 1
        page = doc[0]
        for link in page.links([fitz.LINK_LAUNCH]):
            page.delete_link(link)
        doc.save(os.path.join(tmpdir, 'out.pdf'), deflate=True,
                 garbage=3, encryption=fitz.PDF_ENCRYPT_KEEP)
        shutil.move(os.path.join(tmpdir, 'out.pdf'),
                    os.path.join(tmpdir, pdf_name))
        pix = page.get_pixmap(dpi=250)
        pix.pil_save(os.path.join(tmpdir, jpeg_name), optimize=True)
        for file in targets:
            copyfile(tmpdir, '.', file)