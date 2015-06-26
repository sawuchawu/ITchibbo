package jasoseol.action;

import jasoseol.bean.JasoseolBean;
import jasoseol.dao.JasoseolDao;

import java.util.HashMap;
import java.util.List;

import tech.dao.TechDao;

import com.opensymphony.xwork2.Action;

public class JasoseolListAction implements Action {
	private List<JasoseolBean> list;
	private int currentPage = 1;
	private int start;
	private int end;
	private StringBuffer sb = new StringBuffer();

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public StringBuffer getSb() {
		return sb;
	}

	public void setSb(StringBuffer sb) {
		this.sb = sb;
	}

	public List<JasoseolBean> getList() {
		return list;
	}

	public void setList(List<JasoseolBean> list) {
		this.list = list;
	}

	public void paging() {
		try {
			// paging
			int pageScale = 8;// tuple or page NumberCount
			int totalRow = 1;
			totalRow = JasoseolDao.getTotalRow();

			int totalPage = totalRow % pageScale == 0 ? (totalRow / pageScale)
					: (totalRow / pageScale) + 1;
			if (totalRow == 0)
				totalPage = 1;

			start = 1 + (currentPage - 1) * pageScale;
			end = pageScale + (currentPage - 1) * pageScale;

			int block = (currentPage % pageScale) == 0 ? currentPage
					/ pageScale : (currentPage / pageScale) + 1;
			int startPage = 1 + (block - 1) * pageScale;
			int endPage = pageScale + (block - 1) * pageScale;
			if (endPage >= totalPage) {
				endPage = totalPage;
			}

			sb.append("<a href='/jasoseol/jasoseolList.action?currentPage=1'><img src='/img/button/btn_first.gif'/></a>&nbsp;&nbsp;&nbsp;");
			if (block > 1) {
				sb.append("<a href='/jasoseol/jasoseolList.action?currentPage="
						+ (startPage - 1)
						+ "'><img src='/img/button/btn_prev.gif'/></a>&nbsp;&nbsp;&nbsp;");
			} else {
				sb.append("<a href='#'><img src='/img/button/btn_prev.gif'/></a> &nbsp;&nbsp;&nbsp;");
			}
			sb.append("<span>");
			for (int i = startPage; i <= endPage; i++) {
				if (currentPage == i) {
					sb.append("<font size=4 color=blue>[" + i
							+ "]</font>&nbsp;&nbsp;&nbsp;");
				} else {
					sb.append("<a href='/jasoseol/jasoseolList.action?currentPage=" + i
							+ "'>[" + i + "]</a> &nbsp;&nbsp;&nbsp;");
				}
			}
			sb.append("</span>");
			if (endPage < totalPage)
				sb.append("<a href='/jasoseol/jasoseolList.action?currentPage="
						+ (endPage + 1)
						+ "'><img src='/img/button/btn_next.gif'/>'/></a> &nbsp;&nbsp;&nbsp;");

			else
				sb.append("<a href='#'><img src='/img/button/btn_next.gif'/></a>&nbsp;&nbsp;&nbsp;");
			sb.append("<a href='/jasoseol/jasoseolList.action?currentPage=" + totalPage
					+ "'><img src='/img/button/btn_last.gif'/></a>");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		paging();
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("start", start);
		map.put("end", end);
		list = JasoseolDao.selectJasoseol(map);
		return SUCCESS;
	}

}